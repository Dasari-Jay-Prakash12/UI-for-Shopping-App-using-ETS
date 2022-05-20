@Entry
@Component
struct Filtering {

  categories_s :Scroller = new Scroller();
  category_list: SelectOption[] = [
    {value: "shirts", icon: $r("app.media.uspolo")},
    {value: "mobiles", icon: $r("app.media.phoneimage1")},
    {value: "rackets", icon: $r("app.media.bestracket")},
    {value: "airdopes", icon: $r("app.media.airdopes1")}

  ];
  // Actually  we have to create this brand list such that depending on the item selected respective brands will be shown , but i am just taking some brand list.
  brand_list: SelectOption[] = [
    {value: "BOAT", icon: $r("app.media.airdopes2")},
    {value: "US-POLO", icon: $r("app.media.uspolo")},
    {value: "Samsung", icon: $r("app.media.bestmobile")},
    {value: "Huawei", icon: $r("app.media.huaweimobile")}
  ];


  build() {
    Column({}) {
      Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {

        Button('<', { type: ButtonType.Normal })
          .backgroundColor('#dcdde0')
          .fontColor(Color.Black)
          .fontWeight(FontWeight.Bold)
          .fontSize(30)
          .borderRadius(10);
        Text('Filter').fontSize(30).fontWeight(FontWeight.Bold);
        Image($r('app.media.twodots')).objectFit(ImageFit.Cover).width('50').height('40');


        // Button('..').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold).fontSize(40);
      }.padding({ bottom: 20 });
      Text('Gender').fontSize(30).fontWeight(FontWeight.Bold);

      Row({space:30}){
        Button('Male').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
        Button('Female').backgroundColor('#0000FF').fontColor(Color.Black).fontWeight(FontWeight.Bold);
        Button('Both').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);


      }.margin(10);
      Text('Category').fontSize(30).fontWeight(FontWeight.Bold);
      Select(this.category_list)
        .selected(1)
        .height(60)
        .width(300)
        .backgroundColor("#dcdde0")
        .margin(20)
        .borderRadius(15);
      Text('Brand').fontSize(30).fontWeight(FontWeight.Bold);
      Select(this.brand_list)
        .selected(3)
        .height(60)
        .width(300)
        .backgroundColor("#dcdde0")
        .margin(20)
        .borderRadius(15);
      Text('Price:').fontSize(30).fontWeight(FontWeight.Bolder);
      Column() {
        Row({space:180}) {
          Text(" 1000").fontSize(20).fontWeight(FontWeight.Bolder);
          Text(" 10000").fontSize(20).fontWeight(FontWeight.Bolder);
        }
        Slider({
          value: 1000,
          min: 100,
          max: 10000,
          step: 100,

        });
      }
      .alignItems(HorizontalAlign.Start)
      .margin(15)
      .padding({bottom:'20'});
      Text('Sizes').fontSize(30).fontWeight(FontWeight.Bolder);

      Scroll(this.categories_s) {
        Row({ space: 12 }) {
          Button('6 inch').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);

          Button('7 inch').backgroundColor('#0000FF').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('8 inch').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('9 inch').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('10 inch').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
        }
      }.width(300)
       .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On)
      .margin(15)
      .padding({bottom:15});
      Flex({ alignItems: ItemAlign.Center}){

          Button('Clear All').backgroundColor('#C0C0C0').fontColor(Color.Black).fontWeight(FontWeight.Bold).width(200);

        Button('Add').backgroundColor('#0000FF').fontColor(Color.Black).fontWeight(FontWeight.Bold).width(200);


      }



    }.margin(10)
    .alignItems(HorizontalAlign.Start);

  }
}