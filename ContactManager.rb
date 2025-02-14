# ContactManager class to manage the contacts in the text file
class ContactManager
  # File where contacts will be saved
  CONTACTS_FILE = 'contacts.txt'

  def initialize
    # Initialize the contacts list from the file
    load_contacts
  end

  def load_contacts
    # Read the contacts from the file and store them in an array
    if File.exist?(CONTACTS_FILE)
      @contacts = File.readlines(CONTACTS_FILE).map { |line| line.strip.split(',') }
    else
      @contacts = []
    end
  end

  def save_contacts
    # Write the contacts back to the file
    File.open(CONTACTS_FILE, 'w') do |file|
      @contacts.each { |contact| file.puts(contact.join(',')) }
    end
  end

  def add_contact(name, phone)
    # Add a new contact
    @contacts << [name, phone]
    save_contacts
    puts "Contact #{name} added successfully!"
  end

  def list_contacts
    # List all contacts
    if @contacts.empty?
      puts "No contacts found."
    else
      @contacts.each_with_index do |contact, index|
        puts "#{index + 1}. Name: #{contact[0]}, Phone: #{contact[1]}"
      end
    end
  end

  def delete_contact(index)
    # Delete a contact by its index (1-based)
    if index > 0 && index <= @contacts.size
      @contacts.delete_at(index - 1)
      save_contacts
      puts "Contact deleted successfully!"
    else
      puts "Invalid contact index!"
    end
  end
end

# Main program logic
def main
  contact_manager = ContactManager.new

  loop do
    puts "\n1. Add Contact"
    puts "2. List Contacts"
    puts "3. Delete Contact"
    puts "4. Exit"
    print "Choose an option: "
    choice = gets.chomp.to_i

    case choice
    when 1
      print "Enter contact name: "
      name = gets.chomp
      print "Enter contact phone: "
      phone = gets.chomp
      contact_manager.add_contact(name, phone)
    when 2
      contact_manager.list_contacts
    when 3
      print "Enter contact number to delete: "
      index = gets.chomp.to_i
      contact_manager.delete_contact(index)
    when 4
      puts "Exiting the program."
      break
    else
      puts "Invalid choice! Please try again."
    end
  end
end

# Run the program
main