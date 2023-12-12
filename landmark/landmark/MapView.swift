//
//  MapView.swift
//  landmark
//
//  Created by Igor Santana on 11/07/23.
//

import SwiftUI
import MapKit



struct MapView: View {

    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

//essas linhas import SwiftUI e import MapKit, importa os frameworks necessários para criar a interface de usuário e utilizar o mapKit

//    "MapView" é definida conforme o protocolo "View". isso significa que "MapView" é uma visualização de SwiftUI que pode ser usada para construir a interface do usuário
    
//    @State private var region = MKCoordinateRegion(...): Aqui é declarada uma propriedade chamada region que é anotada como @state . Isso indica que o valor dessa propriedade pode ser modificado e que a visualização precisa ser alterada sempre que o valor for alterado. O tipo da propriedade é "MKCoordinateRegion", que é uma estrutura do MapKit, que define a região a ser exibida no mapa. Neste caso a região está centrada em uma coordenada geográfica específica(latitude:...,longitude:...). E tem um certo nível de zoom (latitudeDelta:..., longitudeDelta:...).


//var body : some View ... Essa é uma propriedade que computada que retorna a visualização que deve ser exibida. A palavra chave 'some View' indica que o tipo de retorno é algum tipo de visualização do swiftUi. Neste caso o corpo de visualização é um mapa Map(coordinateRegion: $region).


//Ao prefixar uma variável de estado com $, você passa uma ligação, que é como uma referência ao valor subjacente. Quando o usuário interage com o mapa, o mapa atualiza o valor da região para corresponder à parte do mapa que está atualmente visível na interface do usuário.
