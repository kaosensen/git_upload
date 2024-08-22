var selectedRow = null
let id = 0;
const addButton = document.getElementById('addbtn');
const updateButton = document.getElementById('update');
const emptyButton = document.getElementById('empty');


// 增加id
function getNextId() {
    id += 1;
    return id;
}


//刪除後更新ID
function updateIndices() {
    const rows = tbody.getElementsByTagName('tr');
    for (let i = 0; i < rows.length; i++) {
        let cells = rows[i].getElementsByTagName('td');
        cells[1].innerHTML = i + 1;
    }
}


//將輸入的資料存入object
function storeCarList() {
    const CarList = {};
    CarList.manufacturer = document.getElementById('manufacturer').value.trim();
    CarList.type = document.getElementById('type').value.trim();
    CarList.minprice = document.getElementById('minprice').value.trim();
    CarList.price = document.getElementById('price').value.trim();
    return CarList;
}

//新建table於tbody
function insertNewRecord(data) {
    var table = tbody;  //html中的tbody
    var newRow = table.insertRow();//生成row
    const num = getNextId();
    cell1 = newRow.insertCell(0);//生成每個cell
    cell1.innerHTML = '<input type="radio"  onClick="onRadio(this)"  name="radio" class="radio" id="id">';
    cell2 = newRow.insertCell(1);
    cell2.innerHTML = num;
    cell3 = newRow.insertCell(2);
    cell3.innerHTML = data.manufacturer;
    cell4 = newRow.insertCell(3);
    cell4.innerHTML = data.type;
    cell5 = newRow.insertCell(4);
    cell5.innerHTML = Number(data.minprice);
    cell6 = newRow.insertCell(5);
    cell6.innerHTML = Number(data.price);
    cell7 = newRow.insertCell(6);
    cell7.innerHTML = '<button onClick="onDelete(this)">刪除</button>';
    addButton.addEventListener('click', updateIndices());
}

//新增，會呼叫新建table
addButton.addEventListener('click', function () {
    const CarList = storeCarList();

    if (CarList.manufacturer === '') {
        alert('製造商不可空白');
    } else if (CarList.type === '') {
        alert('類別不可空白');
    }
    else if (Number(CarList.minprice) < 0 || Number(CarList.price) < 0) {
        alert('售價，底價應為正數');
    }
    else if (Number(CarList.minprice) > Number(CarList.price)) {

        alert('售價應大於底價');
    }
    else {
        insertNewRecord(CarList);
    }
});

//radio被選取時顯示資料
function onRadio(td) {
    selectedRow = td.parentElement.parentElement;
    document.getElementById("manufacturer").value = selectedRow.cells[2].innerHTML;
    document.getElementById("type").value = selectedRow.cells[3].innerHTML;
    document.getElementById("minprice").value = selectedRow.cells[4].innerHTML;
    document.getElementById("price").value = selectedRow.cells[5].innerHTML;
}

updateButton.addEventListener('click', function () {


    if (CarList.manufacturer === '') {
        const CarList = storeCarList();
        alert('製造商不可空白');
    } else if (CarList.type === '') {
        alert('類別不可空白');
    } else if (selectedRow) {
        const CarList = storeCarList();
        if (CarList.minprice !== '') {
            selectedRow.cells[4].innerHTML = CarList.minprice; // 更新底價
        }
        if (CarList.price !== '') {
            selectedRow.cells[5].innerHTML = CarList.price; // 更新售價
        }
    }
})

function onDelete(td) {
    if (confirm('確定刪除？')) {
        row = td.parentNode.parentNode;
        row.parentNode.removeChild(row);
        updateIndices();
    }

}
// 清空表格內容
emptyButton.addEventListener('click', function () {
    document.getElementById("manufacturer").value = "";
    document.getElementById("type").value = "";
    document.getElementById("minprice").value = "";
    document.getElementById("price").value = "";
    tbody.innerHTML = '';
    CarList = {};
});
