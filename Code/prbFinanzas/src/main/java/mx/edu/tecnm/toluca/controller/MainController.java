/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Jesus
 */
@Controller
public class MainController {
    @RequestMapping(value="Finanzas/index",method=RequestMethod.GET)
    public String FinanazasIndex(){
        return "Finanzas/index";
    }
    @RequestMapping(value="Finanzas/CatalogoCuentasView",method=RequestMethod.GET)
    public String FinanazasCatalogoCuentasView(){
        return "Finanzas/CatalogoCuentasView";
    }
    @RequestMapping(value="Finanzas/CatalogoVerView",method=RequestMethod.GET)
    public String FinanazasCatalogoVerView(){
        return "Finanzas/CatalogoVerView";
    }
    @RequestMapping(value="Finanzas/EstadoResultadosView",method=RequestMethod.GET)
    public String FinanazasEstadoResultadosView(){
        return "Finanzas/EstadoResultadosView";
    }
    @RequestMapping(value="Finanzas/BalanceGeneralView",method=RequestMethod.GET)
    public String FinanazasBalanceGeneralView(){
        return "Finanzas/BalanceGeneralView";
    }
    @RequestMapping(value="Finanzas/FlujoEfectivoView",method=RequestMethod.GET)
    public String FinanazasFlujoEfectivoView(){
        return "Finanzas/FlujoEfectivoView";
    }
    @RequestMapping(value="Finanzas/ReporteEstadoResultadosView",method=RequestMethod.POST)
    public String FinanazasReporteEstadoResultadosView(){
        return "Finanzas/ReporteEstadoResultadosView";
    }
    @RequestMapping(value="Finanzas/ReporteBalanceGeneralView",method=RequestMethod.POST)
    public String FinanazasReporteBalanceGeneralView(){
        return "Finanzas/ReporteBalanceGeneralView";
    }
    @RequestMapping(value="Finanzas/ReporteFlujoEfectivoView",method=RequestMethod.POST)
    public String FinanazasReporteFlujoEfectivoView(){
        return "Finanzas/ReporteFlujoEfectivoView";
    }
    
}
