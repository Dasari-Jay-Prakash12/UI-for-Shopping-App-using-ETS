@Entry
@Component
struct Detailsofitem {
  data_s: Scroller = new Scroller();
  categories_s : Scroller = new Scroller();
  @State value:number = 1;

  build() {
    Column({}) {
      Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {

        Button('<',{type:ButtonType.Normal}).backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold).fontSize(30).borderRadius(10);
        Text('Details').fontSize(30).fontWeight(FontWeight.Bold);
        Image($r('app.media.twodots')).objectFit(ImageFit.Cover).width('50').height('40');


        // Button('..').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold).fontSize(40);
      }.padding({bottom:20});
      Stack({alignContent: Alignment.BottomEnd}) {
        Image($r("app.media.airdopes1")).objectFit(ImageFit.Cover).width(300).height(200);
        // review rate
        Column({space: 5}) {
          Row({space: 5}) {
            Image($r("app.media.star1")).width(30).height(30);
            Text("4").fontWeight(FontWeight.Bolder).fontSize(20);
          }
          Text("200 reviews");
        }
        .backgroundColor(Color.Blue)
        .borderRadius(10)
        .borderWidth(5)
        .borderColor(Color.White);
      }
      .width(320)
      .borderWidth(3)
      .borderRadius(20);


      Text('Best Noise Cancellation Airpods').fontSize(30).fontWeight(FontWeight.Bold)

      Text('Rs3000/-').fontWeight(FontWeight.Bold).fontSize(20);
      Scroll(this.data_s){
        Text('Offer se, delivering only the sound of your media to your ears. No longer will there be any interference from external sources. Airdopes are designed and perfected for superior calls and entertainment.Airdopes are perfect for WFH calls or meetings. Microphones are placed in key locations on the earbuds that accurately picks up your voice while cancelling out background noise. The result is a clear and crisp voice and a consistent experience. Moreover, with the latest Bluetooth technology, pairing instantly with multiple devices while switching between those devices has never been easier. Simplicity and elegance define Airdopes.Sound with unmatched st ')
          .fontSize(15);
      }
      .scrollable(ScrollDirection.Vertical)
      .height(150);
      Flex({  alignItems: ItemAlign.Center }) {
        Row({space:0}) {
          Text('Color').fontSize(15);
          Column() {
            Radio({ group: "Color", value: 'Pink' });
            Text("Pink").fontColor(Color.Pink)
          }

          Column() {
            Radio({ group: "Color", value: "Yellow" });
            Text("Yellow").fontColor(Color.Yellow)
          }

          Column() {
            Radio({ group: "Color", value: "Red" });
            Text("Red").fontColor(Color.Red)
          }

          Row() {

            Button('+',{type:ButtonType.Normal}) .backgroundColor('').fontColor(Color.Black).borderWidth(2).borderRadius(10).width(40)//,{type:ButtonType.Normal, stateEffect:true}).backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold).fontSize(30).borderRadius(10)
              .onClick(() => {

                this.value = this.value + 1;
              })
            Button('items:' + this.value)
            //Button(this.value,{type:ButtonType.Normal}).backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold).fontSize(30).borderRadius(10);
            Button('-',{type:ButtonType.Normal}) .backgroundColor('').fontColor(Color.Black).borderWidth(2).borderRadius(10).width(40) //,{type:ButtonType.Normal}).backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold).fontSize(30).borderRadius(10)
              .onClick(() => {

                this.value = this.value - 1;
                if (this.value < 0)
                this.value = 0;

              })
          }
        }
      }
      .padding({bottom:15});
      Text('Available Sizes').fontSize(30).fontWeight(FontWeight.Bolder);
      //padding({bottom:20})

      Scroll(this.categories_s) {
        Row({ space: 15 }) {
          Button('6 inch').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);

          Button('7 inch').backgroundColor('#C0C0C0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('8 inch').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('9 inch').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('10 inch').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
        }
      }
       .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On)
      .padding({bottom:15});
      Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
        Image($r('app.media.love1')).objectFit(ImageFit.Cover).width('60').height('60');
        Row() {
          Text('Add to cart').fontWeight(FontWeight.Bold).fontSize(40);
          Image($r('app.media.shop')).objectFit(ImageFit.Cover).width('40').height('50');
        }
        .backgroundColor(Color.Blue);
      }


    }.alignItems(HorizontalAlign.Start)
    .margin(15);


  }
}