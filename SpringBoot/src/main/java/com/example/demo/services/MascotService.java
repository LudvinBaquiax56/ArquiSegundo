package com.example.demo.services;


import com.example.demo.models.Mascot;
import com.example.demo.models.User;
import com.example.demo.repositories.MascotRepository;
import com.example.demo.repositories.UserRepository;
import com.example.demo.request.RequestDTO;
import com.example.demo.response.ResponseDTO;
import com.example.demo.response.UserResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Optional;

@Service
public class MascotService {
    @Autowired
    MascotRepository mascotRepository;

    public ArrayList<Mascot> obtenerMascotas(){
        return (ArrayList<Mascot>) mascotRepository.findAll();
    }

    public Optional<Mascot> obtenerMascotaId(Integer id){
        return mascotRepository.findById(id);
    }
}
