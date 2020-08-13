# Firebase-Crashlytics-Help

1. create a project in your firebase account
2. add "GoogleService-Info.plist" file in project
3. add this pods(check if any update): 
	   pod 'Firebase/Analytics'
 	   pod 'Firebase/Crashlytics'
4. need to change scheme to release:
	 open edit scheme -> Run -> Build Configuration: Release

5. add this code in didFinishLaunching:
    - FirebaseApp.configure()
    - Crashlytics.crashlytics().setCrashlyticsCollectionEnabled(false)
    - Crashlytics.crashlytics().checkForUnsentReports { _ in
        Crashlytics.crashlytics().sendUnsentReports()
    	}

6. open build setting of your project:
	  - search for (Build Active Architecture Only) change it to "YES"
	  - search for (Debug Information Format) change it to "DWARF with dSYM File"

7. open build phase -> press "+" button -> add run script : 
   - [ "${PODS_ROOT}/FirebaseCrashlytics/run" ] add whole text inside brackets 
   - add this [$(SRCROOT)/$(BUILT_PRODUCTS_DIR)/$(INFOPLIST_PATH)] in input files


8. write this anywhere in your project to force crash your app: fatalError()



Note: If above steps are not followed then you won't get crash report in Firebase console
