// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.3.0/firebase-app.js";


// importing firebase firestore and all functions to get and set data from firestore 
import { getFirestore, doc, getDocs, collection, addDoc, } from "https://www.gstatic.com/firebasejs/9.3.0/firebase-firestore.js"

// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
    apiKey: "AIzaSyD7tmDG1Tyh_vxDkLjwoZfBdsQ77p9lb0Q",
    authDomain: "bca-iu.firebaseapp.com",
    databaseURL: "https://bca-iu-default-rtdb.firebaseio.com",
    projectId: "bca-iu",
    storageBucket: "bca-iu.appspot.com",
    messagingSenderId: "1027716405047",
    appId: "1:1027716405047:web:da0396f623b0801b6becb2"
};


const app = initializeApp(firebaseConfig);

// importing firestore
const db = getFirestore();




// fetching data from firestore and setting to subjects dropdown

var subjects = document.getElementById('subjects');
var querySnapshot = await getDocs(collection(db, "subjects"));
querySnapshot.forEach((doc) => {
    // doc.data() is never undefined for query doc snapshots
    // console.log(doc.id, " => ", doc.data());
    var subject = doc.data();
    subjects.innerHTML += `<option id="semester" value="${subject['name']}">${subject['name']}</option>`
    // console.log(subject['name']);
});

// fetching data from firestore and setting to semester dropdown
var semesters = document.getElementById('semesters');
var querySnapshot = await getDocs(collection(db, "semesters"));
querySnapshot.forEach((doc) => {
    // doc.data() is never undefined for query doc snapshots
    // console.log(doc.id, " => ", doc.data());
    var data = doc.data();
    semesters.innerHTML += `<option id="subject" value="${data['semester']}">${data['semester']}</option>`
    console.log(data['semester']);
});


var formNotesPdf = document.getElementById('add-notes-pdf');
var title = document.getElementById('title');
var url = document.getElementById('url');
var semester = document.getElementById('semesters');
var subject = document.getElementById('subjects');
var type = document.getElementById('types');
// saving data to firestore
formNotesPdf.addEventListener('submit', (e) => {
    e.preventDefault();
    console.log(title.value);
    console.log(url.value);
    console.log(semester.value);
    console.log(subject.value);
    console.log(type.value);

  // Adding subject.
  if(title.value === "" || url.value === "" ){
    alert("Empty field cannot be submited.");
}else{
    var docRef =  addDoc(collection(db, "pdf"),{
        title: title.value,
        url: url.value,
        semester: semester.value,
        subject: subject.value,
        type: type.value,
    });
    title.value = "";
    url.value = "";
    alert("Pdf Added Successfully");
    
}
});





var addSubjects = document.getElementById('addSubjects');
var subCode = document.getElementById('subjectCode');
var subName = document.getElementById('subjectName');
var semesterName = document.getElementById('semesterName');

addSubjects.addEventListener('submit', (e) => {
    e.preventDefault();

    // Adding subject.
    if(subCode.value === "" || subName.value === "" || semesterName.value === ""){
        alert("Empty field cannot be submited.");
    }else{
        var docRef =  addDoc(collection(db, "subjects"),{
            code: subCode.value,
            name: subName.value,
            semester: semesterName.value
        });
        subCode.value = "";
        subName.value = "";
        semesterName.value = "";
        alert("Subject Added Successfully");
        
    }



});
