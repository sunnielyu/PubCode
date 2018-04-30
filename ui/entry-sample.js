function getParameterByName(name) {
    var url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

function getEntrySample() {
    var xhr = new XMLHttpRequest(),
        id = getParameterByName('id');
    xhr.onreadystatechange = function () {
        if(xhr.readyState === 4 && xhr.status === 200) {
            var item = JSON.parse(xhr.responseText),
                keywords = '';

            if(item.Keywords) {
                var arr = item.Keywords.split(',');
                for(key in arr) {
                    keywords += '<span>' + arr[key] + '</span>';
                }
            }

            document.getElementById('title').innerHTML = '<h1>' + item.CodeTitle + '</h1>';
            document.getElementById('pmid').innerHTML = item.PMID || 'N/A';
            document.getElementById('pmcid').innerHTML = item.PMCID || 'N/A';
            document.getElementById('doi').innerHTML = item.DOI || 'N/A';
            document.getElementById('date_added').innerHTML = item.CodePubDate || 'N/A';
            document.getElementById('last_update').innerHTML = item.LastUpdated || 'N/A';
            document.getElementById('authors').innerHTML = item.Authors || 'N/A';
            document.getElementById('languages').innerHTML = item.CodeLanguage || 'N/A';
            document.getElementById('os').innerHTML = item.OS || 'N/A';
            document.getElementById('dependencies').innerHTML = item.Dependencies || 'N/A';
            document.getElementById('version').innerHTML = item.Version || 'N/A';
            document.getElementById('license').innerHTML = item.Licensing || 'N/A';
            document.getElementById('url').innerHTML = '<a href="' + item.Url + '"><button>Get the code</button></a>';
            document.getElementById('keywords').innerHTML = keywords;
            document.getElementById('description').innerHTML = '<p>' + (item.Description || 'N/A') + '</p>';
            document.getElementById('quickStart').innerHTML = '<p>' + (item.QuickStart || 'N/A') + '</p>';
            document.getElementById('documentation').innerHTML = '<p>' + (item.Documentation || 'N/A') + '</p>';
        }
    };
    xhr.open('GET', 'http://localhost:5000/item/' + id, true);
    xhr.send();
}

getEntrySample();
