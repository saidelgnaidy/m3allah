import 'package:flutter/material.dart';
import 'package:m3allah/blocs/search/search_cubit.dart';
import 'package:m3allah/views/component/const.dart';

class SearchSurah extends StatefulWidget {
  final Function(String)? onChanged;
  const SearchSurah({Key? key, this.onChanged}) : super(key: key);

  @override
  State<SearchSurah> createState() => _SearchSurahState();
}

class _SearchSurahState extends State<SearchSurah> {
  final TextEditingController ctrl = TextEditingController();

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Theme.of(context).colorScheme.surface,
            boxShadow: kBoxShadow(),
          ),
          child: TextField(
            controller: ctrl,
            onChanged: widget.onChanged ?? (value) => SearchCubit.of(context).search(value),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_rounded, color: Theme.of(context).iconTheme.color!),
              hintText: 'الفاتحة',
              hintStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.grey[600]),
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(Icons.clear, color: Theme.of(context).iconTheme.color!),
                onPressed: () {
                  SearchCubit.of(context).search('');
                  ctrl.clear();
                },
              ),
            ),
            cursorColor: Theme.of(context).iconTheme.color!,
            style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
