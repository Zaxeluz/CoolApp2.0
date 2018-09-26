//
//  PlaceDetails.swift
//  Tabs
//
//  Created by Alumno on 26/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PlaceDetails : UIViewController {
    
    var place : Place?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (place != nil) {
            if let lugarActual = place {
                self.title = lugarActual.nombre
                
                if let primerParcial = lugarActual.calificacionPrimerParcial {
                    lblCalificacionPrimerParcial.text = "\(primerParcial)"
                } else {
                    lblCalificacionPrimerParcial.text = "-"
                }
                
                if let segundoParcial = lugarActual.calificacionSegundoParcial {
                    lblCalificacionSegundoParcial.text = "\(segundoParcial)"
                } else {
                    lblCalificacionSegundoParcial.text = "-"
                }
                
                if let tercerParcial = lugarActual.calificacionTercerParcial {
                    lblCalificacionTercerParcial.text = "\(tercerParcial)"
                } else {
                    lblCalificacionTercerParcial.text = "-"
                }
                
                if let calificacionFinal = lugarActual.calificacionFinal {
                    lblCalificacionFinal.text = "\(calificacionFinal)"
                } else {
                    lblCalificacionFinal.text = "-"
                }
                
            }
        }
        
    }
}
