package com.fartmastdev.ApiProject.controller;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.fartmastdev.ApiProject.models.DniTable;
import com.fartmastdev.ApiProject.models.RucTable;
import com.fartmastdev.ApiProject.repositories.DniRepository;
import com.fartmastdev.ApiProject.repositories.RucRepository;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*") 
public class ApiController {

    @Autowired
    private DniRepository dniRepository;
    @Autowired
    private RucRepository rucRepository;
    @Autowired
    private FunctionHelperController functionHelperController;

    @GetMapping("/search/{type}/{searching}")
    public ResponseEntity<?> getDniRucRequest(@PathVariable int type, @PathVariable String searching) {
        Map<String, String> response = new HashMap<>();

        switch (type) {
            case 1:
                return findOrCreateDNI(searching);
            case 2:
                return findOrCreateRUC(searching);
            default:
                response.put("Error", "El tipo de búsqueda es inválido");
                return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
    }
    private ResponseEntity<?> findOrCreateRUC(String searching) {
        Map<String, String> response = new HashMap<>();
        RucTable ruc = rucRepository.findByRuc(searching);

        if (ruc != null) {
            return new ResponseEntity<>(ruc, HttpStatus.OK);
        } else {
            if (searching.trim().length() != 11) {
                response.put("msg", "El RUC debe tener 11 dígitos");
                return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
            }
            String url = "https://apiperu.dev/api/ruc/" + searching;
            String token = "32a8ec577058bd2b4a880e2d3f03d2ca151fcf13e30f4c543b7dd8ed6895d330";
            ResponseEntity<String> apiResponse = functionHelperController.fetchData(url, token);
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                Map<String, Object> apiResponseBody = objectMapper.readValue(apiResponse.getBody(), new TypeReference<Map<String, Object>>() {});

                boolean success = (Boolean) apiResponseBody.get("success");
                if (!success) {
                    response.put("msg", "No se encontró una empresa con ese RUC");
                    return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
                }
                @SuppressWarnings("unchecked")
                Map<String, Object> data = (Map<String, Object>) apiResponseBody.get("data");
                RucTable newContribuyente = new RucTable();
                newContribuyente.setRuc(searching);
                newContribuyente.setUbigeo((String) data.get("ubigeo_sunat"));
                newContribuyente.setTipoVia((String) data.get("tipo_via"));
                newContribuyente.setNombreVia((String) data.get("nombre_via"));
                newContribuyente.setCodigoZona((String) data.get("codigo_zona"));
                newContribuyente.setTipoZona((String) data.get("tipo_zona"));
                newContribuyente.setNumero((String) data.get("numero"));
                newContribuyente.setKilometro((String) data.get("kilometro"));
                newContribuyente.setInterior((String) data.get("interior"));
                newContribuyente.setLote((String) data.get("lote"));
                newContribuyente.setDepartamento((String) data.get("departamento"));
                newContribuyente.setManzana((String) data.get("manzana"));

                RucTable savedContribuyente = rucRepository.save(newContribuyente);
                return new ResponseEntity<>(savedContribuyente, HttpStatus.OK);

            } catch (IOException e) {
                response.put("msg", "Error procesando la respuesta de la API");
                return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }
    }

    private ResponseEntity<?> findOrCreateDNI(String searching) {
        Map<String, String> response = new HashMap<>();
        DniTable dni = dniRepository.findByDni(searching);

        if (dni != null) {
            return new ResponseEntity<>(dni, HttpStatus.OK);
        } else {
            if (searching.trim().length() != 8) {
                response.put("msg", "El DNI debe tener 8 dígitos");
                return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
            }
            String url = "https://apiperu.dev/api/dni/" + searching;
            String token = "32a8ec577058bd2b4a880e2d3f03d2ca151fcf13e30f4c543b7dd8ed6895d330";
            ResponseEntity<String> apiResponse = functionHelperController.fetchData(url, token);

            ObjectMapper objectMapper = new ObjectMapper();
            try {
                Map<String, Object> apiResponseBody = objectMapper.readValue(apiResponse.getBody(), new TypeReference<Map<String, Object>>() {});

                boolean success = (Boolean) apiResponseBody.get("success");
                if (!success) {
                    response.put("msg", "No se encontró una persona con ese DNI");
                    return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
                }
                @SuppressWarnings("unchecked")
                Map<String, Object> data = (Map<String, Object>) apiResponseBody.get("data");

                DniTable newDni = new DniTable();
                newDni.setDni(searching);
                newDni.setNombres((String) data.get("nombres"));
                newDni.setApellidoPaterno((String) data.get("apellido_paterno"));
                newDni.setApellidoMaterno((String) data.get("apellido_materno"));
                newDni.setCodVerifica(null);
                DniTable savedDni = dniRepository.save(newDni);
                return new ResponseEntity<>(savedDni, HttpStatus.OK);
            } catch (IOException e) {
                response.put("msg", "Error procesando la respuesta de la API");
                return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }
    }

}
