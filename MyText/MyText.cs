
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows;
using Contract;

namespace MyText
{
    public class MyText : CShape, IShape
    {
        private const char minor_separator_1 = '!';
        private const char minor_separator_2 = ';';
        public string Name => "Text";

        public string Icon => "";
        public System.Windows.Media.Color ShapeColor { get; set; } = Colors.Transparent;
        public int Thickness { get; set; } = -1;
        public SolidColorBrush Brush { get; set; }
        public DoubleCollection StrokeDash { get; set; }

        private string textContent = "";
        private System.Windows.Media.FontFamily fontFamily = null;
        private int fontSize = 16;
        bool isBold = false;
        bool isItalic = false;
        bool isUnderline = false;
        System.Windows.Media.Color color;

        public void UpdatecolorFamily(System.Windows.Media.Color c)
        {
            color = c;
        }

        public void UpdateFontFamily(System.Windows.Media.FontFamily ff)
        {
            fontFamily = ff;
        }

        public void UpdateFontSize(int size)
        {
            fontSize = size;
        }
        public void UpdateBold(bool bold)
        {
            isBold = bold;
        }
        public void UpdateItalic(bool italic)
        {
            isItalic = italic;
        }
        public void UpdateUnderline(bool underline)
        {
            isUnderline = underline;
        }

        public void SetContent(string text)
        {
            textContent = text;
        }


        public IShape Clone()
        {
            return new MyText();
        }

        override public CShape deepCopy()
        {
            MyText temp = new MyText();
            temp.textContent = textContent;
            temp.LeftTop = this._leftTop.deepCopy();
            temp.RightBottom = this._rightBottom.deepCopy();
            temp._rotateAngle = this._rotateAngle;
            temp.Thickness = this.Thickness;

            if (this.Brush != null)
                temp.Brush = this.Brush.Clone();

            if (this.StrokeDash != null)
                temp.StrokeDash = this.StrokeDash.Clone();

            return temp;
        }

        public string FromShapeToString()
        {
            throw new NotImplementedException();
        }

        public IShape FromStringToShape(string str)
        {
            throw new NotImplementedException();
        }

        public void HandleStart(double x, double y)
        {
            _leftTop = new Point2D() { X = x, Y = y };
        }

        public void HandleEnd(double x, double y)
        {
            _rightBottom = new Point2D() { X = x, Y = y };
        }

        IShape IShape.Clone()
        {
            return new MyText();
        }

        public UIElement Draw(SolidColorBrush brush, int thickness, DoubleCollection dash)
        {
            var left = Math.Min(_rightBottom.X, _leftTop.X);
            var top = Math.Min(_rightBottom.Y, _leftTop.Y);

            var right = Math.Max(_rightBottom.X, _leftTop.X);
            var bottom = Math.Max(_rightBottom.Y, _leftTop.Y);

            var width = right - left;
            var height = bottom - top;

            if (ShapeColor == Colors.Transparent) { ShapeColor = color; }
            if (Thickness == -1) { Thickness = thickness; }
            if (StrokeDash == null) { StrokeDash = dash; }

            var textBlock = new TextBox()
            {
                Width = width,
                Height = height,
                Text = textContent,
                Foreground = new SolidColorBrush(color),
                FontFamily = fontFamily ?? System.Windows.SystemFonts.MessageFontFamily,
                FontSize = fontSize,
                FontWeight = isBold ? FontWeights.Bold : FontWeights.Normal,
                FontStyle = isItalic ? FontStyles.Italic : FontStyles.Normal,
                TextDecorations = isUnderline ? TextDecorations.Underline : null
            };


            Canvas.SetLeft(textBlock, left);
            Canvas.SetTop(textBlock, top);
            RotateTransform transform = new RotateTransform(this._rotateAngle);
            transform.CenterX = width * 1.0 / 2;
            transform.CenterY = height * 1.0 / 2;
            textBlock.RenderTransform = transform;

            return textBlock;
        }
    }
}
