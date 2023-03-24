object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Informacja'
  ClientHeight = 128
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 288
    Height = 128
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 183
    object TabSheet1: TTabSheet
      Caption = 'O programie'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 280
        Height = 100
        Align = alClient
        Alignment = taCenter
        Lines.Strings = (
          'Program " Losowanie"  V.1.0.1 (4.03.2023)'
          'Stworzony przez Dymitra Wygowskiego'
          '(Dmitriy Vygovskiy)'
          #346'rodowisko Delphi 10.4'
          'Poland'
          'Kontakt'
          'E-mail: programista.art@gmail.com')
        ReadOnly = True
        TabOrder = 0
        ExplicitHeight = 155
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Licencja'
      ImageIndex = 1
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 280
        Height = 100
        Align = alClient
        Lines.Strings = (
          'This program is free software: you can '
          'redistribute it and/or modify'
          'it under the terms of the GNU General Public '
          'License as published by'
          'the Free Software Foundation, either version '
          '3 of the License, or'
          '(at your option) any later version.'
          ''
          'This program is distributed in the hope that it '
          'will be useful,'
          'but WITHOUT ANY WARRANTY; without even '
          'the implied warranty of'
          'MERCHANTABILITY or FITNESS FOR A '
          'PARTICULAR PURPOSE.  See the'
          'GNU General Public License for more details.'
          ''
          'You should have received a copy of the GNU '
          'General Public License'
          'along with this program.  '
          'If not, see https://www.gnu.org/licenses/gpl-'
          '3.0.txt ')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitHeight = 122
      end
    end
  end
end
