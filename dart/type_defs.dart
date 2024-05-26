typedef FutureUserCredentialEither = Future<Either<String, UserCredential>>;
typedef FutureBoolEither = Future<Either<String, bool>>;
typedef FutureStringEither = Future<Either<String, bool>>;

// we don't need these simple typedefs, just to get an idea
typedef CustomBool = bool;
typedef CustomString = String;
typedef CustomInt = int;
typedef CustomList = List;
typedef MovieList = List<Movies>;

// a real example
typedef ApiTypeDef = Either<Error, ApiData>;

class Movies {}

class ApiData {}

typedef StringCallback = void Function(String value);

void exampleFunction(StringCallback callback) {
  callback('Hello, typedef!');
}

// a practical example:

typedef FutureGetProjectListEither = Future<Either<String, List<Project>?>>;

FutureGetProjectListEither getUserProjectList(
    {required String userEmail}) async {
  List<Project>? projects;
  try {
    await FirebaseFirestore.instance
        .collection('projects')
        .where('admin', isEqualTo: userEmail)
        .get()
        .then((value) async {
      projects = value.docs.map((e) => Project.fromJson(e.data())).toList();
    });
    return Right(projects);
  } catch (e) {
    return const Left('Project can\'t be retrieved right now.');
  }
}
