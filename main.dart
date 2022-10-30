  import 'package:myapp/src/teta_files/imports.dart';
  
  
  
  
  

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhY2t3b29kYnJpbmNlQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwcm9qZWN0cyI6WzI3MDU5NiwyNDg4NDYsMjU2OTIyLDI2MTUyNF0sImltYWdlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUxtNXd1MGZQN3FXUE5XYmIwYlZnNnRQSVU0eXF1OFFVMEpDeEZibHlGM2g9czk2LWMiLCJuYW1lIjoiU2FsaXUgSWRyaXMiLCJlbWl0dGVyIjoiVGV0YS1BdXRoIiwiaWF0IjoxNjY3MDUwODQ3LCJleHAiOjQ4MjI4MTA4NDd9.xljRm7udNqLGtW0th7SxbJjsqt46cNZzzN5e8rQcGzM',
      prjId: 270596,
    );
    
    
    
    
    
    runApp(
      MyApp()
    );
  }

  class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
    @override
    void initState() {
      TranslatorGenerator.instance.init(
        mapLocales: [
          MapLocale('en', AppLocale.en),
        ],
        initLanguageCode: 'en',
      );
      TranslatorGenerator.instance.onTranslatedLanguage = _onTranslatedLanguage;
      super.initState();
    }

    void _onTranslatedLanguage(final Locale? locale) {
      setState(() {});
    }

    @override
    Widget build(BuildContext context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (final context) => ThemeCubit(),
          ),
        ],
        child: Sizer(
          builder: (
            final context,
            final orientation,
            final deviceType,
          ) => MaterialApp(
            title: 'Backwood Brince Websites',
            supportedLocales: TranslatorGenerator.instance.supportedLocales,
            localizationsDelegates: TranslatorGenerator.instance.localizationsDelegates,
            home: SplashScreenView(
              navigateRoute: PageEntryPoint(
                key: ValueKey('PageEntryPoint English'),
              ),
              duration: 2200,
              imageSize: 80,
              imageSrc: 'assets/teta-app.png',
              text: '',
              textType: TextType.NormalText,
              textStyle: TextStyle(
                fontSize: 30.0,
              ),
              backgroundColor: Colors.black,
            ),
          ),
        ), 
      );
    }
  }

  
  