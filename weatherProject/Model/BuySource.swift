//
//  BuySource.swift
//  weatherProject
//
//  Created by Ege on 18.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import Foundation
class BuySource{
    
func getTopWearLink(wear: String) -> String{
       if (wear == "coat"){
           return "https://www2.hm.com/tr_tr/productpage.0678968001.html?ef_id=EAIaIQobChMI8am72Oq_5gIV2YTVCh0N2AafEAYYAiABEgJB8fD_BwE:G:s&s_kwcid=AL!850!3!352456952316!!!g!846009745110!&gclid=EAIaIQobChMI8am72Oq_5gIV2YTVCh0N2AafEAYYAiABEgJB8fD_BwE"
       }else if(wear == "sweater"){
           return "https://www.kaft.com/store/simple_soulful_2-sweatshirt/491"
       }else{
           return "https://www2.hm.com/tr_tr/productpage.0593829002.html?ef_id=EAIaIQobChMI1ebLnu2_5gIVBc-yCh3pdgheEAYYBSABEgJWo_D_BwE:G:s&s_kwcid=AL!850!3!352456952358!!!g!667025003406!&gclid=EAIaIQobChMI1ebLnu2_5gIVBc-yCh3pdgheEAYYBSABEgJWo_D_BwE"
       }
   }
   
   func getBelowWearLink(wear: String) -> String {
       if (wear == "boat"){
           return "https://www.crocs.com.tr/urun/crocs-freesail-rain-boot-limon/"
       }else if(wear == "jean"){
           return "https://www.mavi.com/hunter-mavi-premium-jean-pantolon/p/0020226967?gclid=EAIaIQobChMIkqfRye2_5gIVzLHtCh0mhgFCEAYYBiABEgJPJfD_BwE"
       }else{
           return "https://www2.hm.com/tr_tr/productpage.0603585002.html?ef_id=EAIaIQobChMI1Ijk1-2_5gIVT6WaCh2ZgQXDEAYYAyABEgLjr_D_BwE:G:s&s_kwcid=AL!850!3!352471989091!!!g!731332844597!&gclid=EAIaIQobChMI1Ijk1-2_5gIVT6WaCh2ZgQXDEAYYAyABEgLjr_D_BwE"
       }
   }
}
   
