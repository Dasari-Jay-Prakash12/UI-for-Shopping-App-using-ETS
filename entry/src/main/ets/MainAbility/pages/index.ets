@Entry
@Component
struct Index {
  categories_s: Scroller = new Scroller();
  grid_s: Scroller = new Scroller();
  controller: TabsController = new TabsController();

  build() {


    Column({ space: 10 }) {


      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(60).height(50).borderRadius(10);
        Image($r("app.media.profile_ofuser")).objectFit(ImageFit.Cover).width(60).height(50).borderRadius(10);
      }
      .padding(15);

      Flex({}) {


        Text('Discover ').fontSize(30).fontWeight(FontWeight.Bold).padding({ left: 5 });

      }
      .padding({ bottom: 0 });
      Flex({}) {
        Text('Our New Items.').fontSize(30).fontWeight(FontWeight.Bold).padding({ left: 5 });
      }
      .padding({ bottom: 15 });

      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        TextArea({ placeholder: 'Search' }).width('80%').borderWidth(2).borderRadius(10);
        Image($r("app.media.filteringofrequirements"))
          .objectFit(ImageFit.Cover)
          .width(40)
          .height(7)
          .borderWidth(2)
          .borderRadius(10);
      }
      .padding({ bottom: 15 });

      Flex({ justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
        Image($r("app.media.huaweimobile")).objectFit(ImageFit.Cover).width('33%').height(80).padding({ right: 5 });
        Column() {
          Text('Huawei Mobile new version ').fontSize(20).fontWeight(FontWeight.Bold).width('120');
          Text("Coming Soon..").fontSize(14).fontWeight(FontWeight.Bold).fontColor(Color.Red).width('120')
        }
        .width('120')

        Column() {
          Toggle({ type: ToggleType.Switch, isOn: false }).width(60).height(25);
          Text('Notify Me').fontColor(Color.Blue).fontSize(20);
        }
      }
      .borderWidth(2)
      .borderRadius(10)
      .margin({ left: 10 })
      .margin({ right: 10 })
      .padding({ bottom: 5 });
      Flex({}) {
        Text("Categories").fontWeight(FontWeight.Bolder).fontSize(20)


      }
      .padding({ bottom: 5 });
      Scroll(this.categories_s) {
        Row({ space: 10 }) {
          Button('Most Trending').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('Mobilephones').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('Rackets').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('Airdopes').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
          Button('Shirts').backgroundColor('#dcdde0').fontColor(Color.Black).fontWeight(FontWeight.Bold);
        }
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On).padding({ bottom: 10 });

      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Text('Trending Items:').fontWeight(FontWeight.Bolder).fontSize(20).fontWeight(FontWeight.Bolder);
        Row({}) {
          Text('View All').fontWeight(FontWeight.Bold).fontSize(20).padding({ right: 5 });
          Button('>').width(20).height(20).margin({ right: 5 });
        }
      }

      Grid(this.grid_s) {
        GridItem() {
          Column() {
            Image($r('app.media.phoneimage1')).objectFit(ImageFit.Cover).width('150').height('120');
            Text('Huawei 12 Pro').fontWeight(FontWeight.Bolder).fontSize(15);
            Text('₹25000').fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .width(160) .height('180') .alignItems(HorizontalAlign.Start).borderWidth(2) .borderRadius(15).margin({right:5});

        }


        GridItem() {
          Column() {
            Image($r('app.media.phoneimage2')).objectFit(ImageFit.Cover).width('150').height('120');
            Text('Samsung 13 Pro Max').fontWeight(FontWeight.Bolder).fontSize(15);
            Text('₹15000').fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .width(160) .height('190') .alignItems(HorizontalAlign.Start).borderWidth(2) .borderRadius(15).margin({right:5});

        }
        GridItem() {
          Column() {
            Image($r('app.media.airdopes1')).objectFit(ImageFit.Cover).width('150').height('120');
            Text('Boat 641 Air Dopes').fontWeight(FontWeight.Bolder).fontSize(15);
            Text('₹3000').fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .width(160) .height('190') .alignItems(HorizontalAlign.Start).borderWidth(2) .borderRadius(15).margin({right:5});

        }
        GridItem() {
          Column() {
            Image($r('app.media.airdopes2')).objectFit(ImageFit.Cover).width('150').height('120');
            Text('Boat 291').fontWeight(FontWeight.Bolder).fontSize(15);
            Text('₹5000').fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .width(160) .height('180') .alignItems(HorizontalAlign.Start).borderWidth(2) .borderRadius(15).margin({right:5});

        }
        GridItem() {
          Column() {
            Image($r('app.media.twills')).objectFit(ImageFit.Cover).width('150').height('120');
            Text('Jean T-Shirt(M) ').fontWeight(FontWeight.Bolder).fontSize(15);
            Text('₹1000').fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .width(160) .height('180') .alignItems(HorizontalAlign.Start).borderWidth(2) .borderRadius(15).margin({right:5});

        }
        GridItem() {
          Column() {
            Image($r('app.media.uspolo')).objectFit(ImageFit.Cover).width('150').height('120');
            Text('US-POLO ').fontWeight(FontWeight.Bolder).fontSize(15);
            Text('₹2000').fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .width(160) .height('180') .alignItems(HorizontalAlign.Start).borderWidth(2) .borderRadius(15).margin({right:5});

        }
        GridItem() {
          Column() {
            Image($r('app.media.racket1')).objectFit(ImageFit.Cover).width('150').height('120');
            Text('Yones-360  Racket').fontWeight(FontWeight.Bolder).fontSize(15);
            Text('₹3500').fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .width(160) .height('180') .alignItems(HorizontalAlign.Start).borderWidth(2) .borderRadius(15).margin({right:5});

        }



      }
      .columnsTemplate("1fr 1fr")


      .height(200);


      Flex({justifyContent: FlexAlign.SpaceAround, direction: FlexDirection.Row}) {


        Column() {
          Image($r("app.media.home")).objectFit(ImageFit.Cover).width(35).height(35);
          Text("Home").fontSize(15);
        }

        Column() {
          Image($r("app.media.categories")).objectFit(ImageFit.Cover).width(35).height(35);
          Text("Categories").fontSize(15);
        }

        Column() {
          Image($r("app.media.bell")).objectFit(ImageFit.Cover).height(35).width(35);
          Text("Notification").fontSize(15);
        }

        Column() {
          Image($r("app.media.shop")).objectFit(ImageFit.Cover).height(35).width(35);
          Text("Cart").fontSize(15);
        }
      }
    }
    .margin({bottom:30})

    .padding(10);


  }
}