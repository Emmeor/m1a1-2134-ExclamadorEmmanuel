# Module 1 – Activity 1 – Hello World (Dart)

Your first activity. Print a message to the console and fill in your details.

## What to do

### 1. Fill in your details

Open `student.json` and fill in every field:

```json
{
  "classCode": "1234",
  "fullName": "Juan Dela Cruz",
  "studentNumber": "2026-12345",
  "studentEmail": "juan.delacruz@hau.edu.ph",
  "personalEmail": "juan@example.com",
  "githubAccount": "juandelacruz"
}
```

Use the **class code** your instructor gave you (it also appears in your repo
name, e.g. `m1a1-1234-yourname`). This file **is** committed to your repo
(unlike a `.env`), so the tests can read it. Don't put passwords or secrets here.

### 2. Write the Hello World

Open [`bin/hello.dart`](bin/hello.dart) and make it print exactly:

```
Hello, World!
```

to the console using `print(...)`.

## Running the tests

Get dependencies once:

```bash
dart pub get
```

Then run the tests:

```bash
dart test
```

You can run your program directly with:

```bash
dart run bin/hello.dart
```

All tests must pass:

- ✅ `bin/hello.dart` prints `Hello, World!` to the console
- ✅ All six fields in `student.json` are filled in

## Submitting on Canvas

When your tests pass locally, **commit and push** your work:

```bash
git add -A
git commit -m "Activity 1 complete"
git push
```

Pushing triggers the **Autograde** workflow on GitHub. To confirm it passed:

1. Open your repo on GitHub and click the **Actions** tab.
2. Open the latest **Autograde** run and confirm the green ✅ check
   and the "7 / 7 tests passed" summary.

Then submit **both** of these on Canvas:

1. **A screenshot** of the green Autograde run (showing the passing tests).
2. **The link to that Actions run** — copy the URL from your browser, e.g.
   `https://github.com/<org>/<your-repo>/actions/runs/<id>`.

The link lets your instructor verify the run is genuinely yours and passing.
