# ContactManager

A simple Ruby-based Contact Manager application that allows users to add, list, and delete contacts stored in a text file. This application is designed for practicing Ruby fundamentals, focusing on file manipulation, basic data structures, and command-line interaction without the use of any frameworks.

## Features

- **Add Contact**: Allows users to add a new contact with a name and phone number.
- **List Contacts**: Displays all the stored contacts.
- **Delete Contact**: Deletes a contact based on its index in the list.
- **Persistent Storage**: All contacts are stored in a plain text file, ensuring persistence between program executions.

## Prerequisites

- Ruby version 3.x or higher should be installed on your machine.
  
You can check if Ruby is installed by running:

```bash
ruby -v
```

If Ruby is not installed, you can install it using:

```bash
sudo apt install ruby
```

## Usage

1. Clone this repository to your local machine:

```bash
git clone https://github.com/DragonKzWy/ContactManager.git
```

2. Navigate to the directory containing the `ContactManager.rb` file:

```bash
cd ContactManager
```

3. Run the program with the following command:

```bash
ruby ContactManager.rb
```

4. The program will present a simple menu with the following options:
   - **1. Add Contact**: Prompt the user for a name and phone number, then save the contact to the file.
   - **2. List Contacts**: Display all stored contacts.
   - **3. Delete Contact**: Prompt the user for the index of the contact to delete.
   - **4. Exit**: Exit the program.

## Code Overview

The application consists of a `ContactManager` class that handles the main operations: loading contacts from the file, adding, listing, and deleting contacts, and saving the updated list back to the file.

### File Format
The contacts are stored in a plain text file (`contacts.txt`), with each line containing the contact name and phone number separated by a comma. Example:

```
John Doe, 555-1234
Jane Smith, 555-5678
```

## Contributing

Feel free to fork this repository and submit issues or pull requests if you find bugs or have improvements to suggest.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

**DragonKzWy** - [GitHub Profile](https://github.com/DragonKzWy)
