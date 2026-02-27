let users = [];
function addUser(email, password) {
    const user = {
        id: users.length + 1,
        email: email,
        password: password
    };

    users.push(user);
    return user;
}
function findUserByEmail(email) {
    return users.find(user => user.email === email);
}
module.exports = {
    addUser,
    findUserByEmail
};
