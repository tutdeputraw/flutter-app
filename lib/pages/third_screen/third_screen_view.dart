part of '../../pages/_views.dart';

class ThirdScreenView extends StatelessWidget {
  const ThirdScreenView({Key? key}) : super(key: key);
  final double padding = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        title: 'Third Screen',
      ),
      body: GetBuilder<ThirdScreenController>(
        init: ThirdScreenController(),
        builder: (_) => !_.isLoading
            ? SmartRefresher(
                enablePullDown: true,
                enablePullUp: true,
                onRefresh: _.fetchApi,
                onLoading: _.loadNextData,
                header: const MaterialClassicHeader(),
                controller: _.refreshController,
                child: ListView.separated(
                  padding: EdgeInsets.all(padding),
                  itemCount: _.data.data.length,
                  itemBuilder: (ctx, i) => _card(_.data.data[i], _),
                  separatorBuilder: (ctx, i) => Divider(
                    height: padding,
                    color: Colors.transparent,
                  ),
                ),
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget _card(UserData data, ThirdScreenController _) {
    return InkWell(
      onTap: () => _.cardOnClick(data),
      child: Row(
        children: [
          Expanded(
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(data.avatar),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '${data.firstName} ${data.lastName}',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  data.email,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
