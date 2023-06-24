import 'package:coffee_cup/coffe_cup.dart';
import 'package:coffee_cup/features/fields/new_coffe_search_field.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class AdvancedSearchField extends StatefulWidget {
  final TextEditingController controller;
  final int maxHistoryQty;
  final List<String> list;
  const AdvancedSearchField({
    Key? key,
    required this.controller,
    this.maxHistoryQty = 7,
    required this.list,
  }) : super(key: key);

  @override
  State<AdvancedSearchField> createState() => _AdvancedSearchFieldState();
}

class _AdvancedSearchFieldState extends State<AdvancedSearchField> {
  bool tappad = false;
  String advancedHintText = 'Pesquise seus mangás favoritos';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeService.of.selectColor,
        borderRadius: ThemeService.of.borderRadius,
      ),
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            NewCoffeeSearchField(
              hintText: advancedHintText,
              onTap: () {
                setState(() {
                  tappad = !tappad;
                });
              },
              controller: widget.controller,
            
            ),
            Visibility(
              visible: tappad && widget.list.isNotEmpty,
              child: Column(
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.list.length <= widget.maxHistoryQty
                        ? widget.list.length
                        : widget.maxHistoryQty,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.refresh,
                                size: 24,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CoffeeText(
                                text: widget.list[index],
                              ),
                            ],
                          ),
                          CoffeeIconButton(
                            onTap: () {
                              setState(() {
                                widget.list.removeAt(index);
                              });
                            },
                            size: 24,
                            icon: Icons.delete,
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 80,
                      child: CoffeeButtonText(
                        text: 'Limpar',
                        color: ThemeService.of.backgroundIcon,
                        onPressed: () {
                          advancedHintText = 'Pesquise seus mangás favoritos';
                          setState(() {
                            widget.list.removeWhere((element) => true);
                            tappad = false;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
