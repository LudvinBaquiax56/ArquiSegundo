package com.example.demo.controllers;

import com.example.demo.models.Mascot;
import com.example.demo.models.User;
import com.example.demo.request.RequestDTO;
import com.example.demo.response.ResponseDTO;
import com.example.demo.services.MascotService;
import com.example.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Optional;

@RestController
@RequestMapping("/api")
public class MascotaController {
    @Autowired
    MascotService mascotService;

    @GetMapping("/mascot")
    public ArrayList<Mascot> obtenerMascotas(){
        return mascotService.obtenerMascotas();
    }

    @GetMapping("/mascot/{id}")
    public Optional<Mascot> obtenerId(@PathVariable("id") Integer id){
        return this.mascotService.obtenerMascotaId(id);
    }
}
