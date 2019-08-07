// Get references to page elements
var $exampleText = $("#example-text");
var $exampleDescription = $("#example-description");
var $submitBtn = $("#submit");
var $exampleList = $("#example-list");

// The API object contains methods for each kind of request we'll make
var API = {
  saveExample: function(example) {
    return $.ajax({
      headers: {
        "Content-Type": "application/json"
      },
      type: "POST",
      url: "api/examples",
      data: JSON.stringify(example)
    });
  },
  getExamples: function() {
    return $.ajax({
      url: "api/examples",
      type: "GET"
    });
  },
  deleteExample: function(id) {
    return $.ajax({
      url: "api/examples/" + id,
      type: "DELETE"
    });
  }
};

// refreshExamples gets new examples from the db and repopulates the list
var refreshExamples = function() {
  API.getExamples().then(function(data) {
    var $examples = data.map(function(example) {
      var $a = $("<a>")
        .text(example.text)
        .attr("href", "/example/" + example.id);

      var $li = $("<li>")
        .attr({
          class: "list-group-item",
          "data-id": example.id
        })
        .append($a);

      var $button = $("<button>")
        .addClass("btn btn-danger float-right delete")
        .text("ｘ");

      $li.append($button);

      return $li;
    });

    $exampleList.empty();
    $exampleList.append($examples);
  });
};

// handleFormSubmit is called whenever we submit a new example
// Save the new example to the db and refresh the list
var handleFormSubmit = function(event) {
  event.preventDefault();

  var example = {
    text: $exampleText.val().trim(),
    description: $exampleDescription.val().trim()
  };

  if (!(example.text && example.description)) {
    alert("You must enter an example text and description!");
    return;
  }

  API.saveExample(example).then(function() {
    refreshExamples();
  });

  $exampleText.val("");
  $exampleDescription.val("");
};

// handleDeleteBtnClick is called when an example's delete button is clicked
// Remove the example from the db and refresh the list
var handleDeleteBtnClick = function() {
  var idToDelete = $(this)
    .parent()
    .attr("data-id");

  API.deleteExample(idToDelete).then(function() {
    refreshExamples();
  });
};

// Add event listeners to the submit and delete buttons
$submitBtn.on("click", handleFormSubmit);
$exampleList.on("click", ".delete", handleDeleteBtnClick);

//For Login
/* $("#register").on("click", function (event) {
  event.preventDefault();

    username= $("#login-username").val().trim(),
    password= $("#login-password").val().trim(),

}); */
//For Registering
/* function checkEmpty(x) {
  if (x.length === 0) {
    console.log("enter something!");
    return true;
    };
}; */

//.....................................................................................
// register user
var signUpForm = $("#signup");
emailInput = $("#register-username")
passwordInput = $("#register-password")

signUpForm.on("submit", function(event) {
  event.preventDefault();
  var userData = {
    email: emailInput.val().trim(),
    password: passwordInput.val().trim()
  };
//make sure forms not blank
  if (!userData.email || !userData.password) {
    return;
  }

  signUpUser(userData.email, userData.password);
  emailInput.val("");
  passwordInput.val("");
});

function signUpUser(email, password) {
  $.post("/api/signup", {
    email: email,
    password: password
  }).then(function(data) {
    window.location.replace(data);
  
  }).catch(function(err) {
    console.log(err);
  });
}
//end of reg.....................................................................
//login logic.....................................................................

var loginForm = $("#login");
emailInput = $("#login-username")
passwordInput = $("#login-password")

loginForm.on("submit", function(event) {
  event.preventDefault();
  var userData = {
    email: emailInput.val().trim(),
    password: passwordInput.val().trim()
  };

  if (!userData.email || !userData.password) {
    return;
  }

  
loginUser(userData.email, userData.password);
  emailInput.val("");
  passwordInput.val("");
});
function loginUser(email, password) {
  $.post("/api/login", {
    email: email,
    password: password
  }).then(function(data) {
    window.location.replace(data);
    // If there's an error, log the error
  }).catch(function(err) {
    console.log(err);
  });
}

//...........................................................................................
// $("#register").on("click", function(event) {
//   event.preventDefault();
//   email = $("#register-username").val().trim();
//   password = $("#register-password").val().trim();
//   if (email.length === 0) {
//     console.log("enter something!");
//   }
//   if (email.length > 0) {
//     window.location.href = "/survey";
//     console.log("redirecting...");
//   }
// });

// For Login and Registration Box
$("#register-box").hide();
$("#signup").on("click", function(event) {
  event.preventDefault();
  $("#login-box").hide();
  $("#register-box").show();
});

$("#go-back-login").on("click", function(event) {
  event.preventDefault();
  $("#register-box").hide();
  $("#login-box").show();
});
// For Candidates Page

$("#republican-list").hide();
$("#democrat-list").hide();

$("#democrat-button").on("click", function(event) {
  event.preventDefault();
  $("#democrat-button").hide();
  $("#republican-button").hide();
  $("#democrat-list").show();
});

$("#republican-button").on("click", function(event) {
  event.preventDefault();
  $("#democrat-button").hide();
  $("#republican-button").hide();
  $("#republican-list").show();
});
