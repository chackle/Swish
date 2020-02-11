
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum DisplayValue: String {
  
  case inline = "inline"
  case block = "block"
  case inlineBlock = "inline-block"
  case contents = "contents"
  case flex = "flex"
  case grid = "grid"
  case inlineFlex = "inline-flex"
  case inlineGrid = "inline-grid"
  case inlineTable = "inline-table"
  case listItem = "list-item"
  case runIn = "run-in"
  case table = "table"
  case tableCapation = "table-caption"
  case tableColumnGroup = "table-column-group"
  case tableHeaderGroup = "table-header-group"
  case tableFooterGroup = "table-footer-group"
  case tableRowGroup = "table-row-group"
  case tableCell = "table-cell"
  case tableColumn = "table-column"
  case tableRow = "table-row"
  case none = "none"
  case initial = "initial"
  case inherit = "inherit"
}

extension DisplayValue: CSSRepresentable { }
