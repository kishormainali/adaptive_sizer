
## Adaptive Sizer

Adaptive Size helper created using concept of responsive_sizer and flutter_screen_util package.

## Installation
<hr/>
<br/>

```yaml
dependencies:
  adaptive_sizer:
    git:
      url: https://github.com/kishormainali/adaptive_sizer
```


## Usage

<hr/>
<br/>

### Import the package

```dart
import 'package:adaptive_sizer/adaptive_sizer.dart';
```

### Wrap MaterialApp with AdaptiveSizer widget
<hr/>
<br/>

```dart
AdaptiveSizer( 
  builder: (context) {
    return MaterialApp(
      home: HomePage(),
    );
  },
);
```

### Widget Size
<hr/>
<br/>

```dart
Container(
  width: 20.w,   
  height: 30.5.h     
)
```


### Text Size
<hr/>
<br/>

```dart
Text(
  'Adaptive Sizer', 
  style: TextStyle(fontSize: 15.sp), 
)
```