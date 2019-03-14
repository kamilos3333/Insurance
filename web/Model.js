var states = new Array();

states['2017'] = new Array('Hyundai', 'Toyota', 'Ford');
states['2016'] = new Array('Volkswagen', 'Honda', 'Ford');
states['2015'] = new Array('LandRover', 'Audi', 'Skoda');

var cities = new Array();

cities['2017'] = new Array();
cities['2017']['Hyundai'] = new Array('I30 III (2017-)', 'Ix20 (2017-)', 'Tuscon II (2017-)');
cities['2017']['Toyota'] = new Array('Yaris III (2015-)', 'Corolla E16 (2012-)', 'Auris II (2012-)');
cities['2017']['Ford'] = new Array('Mondeo Mk3 (2010-)', 'Mondeo Mk5 (2014-)', 'Edge (2017-)');

cities['2016'] = new Array();
cities['2016']['Volkswagen'] = new Array('Touareg II (2010-)', 'Golf VII (2012-)');
cities['2016']['Honda'] = new Array('Civic IX (2011-)', 'CR-V IV(2012-)');
cities['2016']['Ford'] = new Array('Mondeo Mk5(2014-)', 'S-Max II(2015)');

cities['2015'] = new Array();
cities['2015']['LandRover'] = new Array('Range Rover Sport II (2013-)', 'Discovery IV(2010-)');
cities['2015']['Audi'] = new Array('A4 B9(2015-)', 'A6 C7(2011-)');
cities['2015']['Skoda'] = new Array('RAPID (2015-)', 'Superb II (2008-)');

function setYear(){
    cntrySel = document.getElementById('year');
    stateList = states[cntrySel.value];
    changeSelect('brands', stateList, stateList);
    setBrands();
}

function setBrands() {
    cntrySel = document.getElementById('year');
    stateSel = document.getElementById('brands');
    cityList = cities[cntrySel.value][stateSel.value];
    changeSelect('model', cityList, cityList);
}

function changeSelect(fieldID, newOptions, newValues) {
    selectField = document.getElementById(fieldID);
    selectField.options.length = 0;
    for (i = 0; i<newOptions.length; i++) {
        selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
    }
}

function addLoadEvent(func) 
{
    var oldonload = window.onload;
    if (typeof window.onload != 'function') {
        window.onload = func;
    } else {
        window.onload = function() {
            if (oldonload) {
                oldonload();
            }
            func();
        }
    }
}

addLoadEvent(function () {
    setYear();
});