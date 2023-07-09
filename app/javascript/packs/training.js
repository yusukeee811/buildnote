/*動的フォームは作成できたが、javascriptで作成したフォームに入力しても保存できず、諦める
document.addEventListener('DOMContentLoaded', function() {
  const setField = document.querySelector('.set-field input');
  const weightAndRepsFields = document.querySelector('.weight-and-reps-fields');
  const form = document.querySelector('#myForm'); // フォーム要素を適切なセレクタで取得

  setField.addEventListener('input', function() {
    // 現在のセット数を取得
    const set = parseInt(setField.value);
    // セット数の変更に伴って現在の入力欄を取得し、必要に応じて削除するために使用
    const currentFields = weightAndRepsFields.querySelectorAll('.weight-and-reps-field');

    // 既存の入力欄とラベルを削除
    currentFields.forEach(function(field) {
      field.remove();
    });

    if (set >= 1 && set <= 10) {
      // 入力欄とラベルを追加
      for (let i = 0; i < set; i++) {
        const fieldContainer = document.createElement('div');
        fieldContainer.classList.add('weight-and-reps-field', 'container-flex', 'mt-3');

        const weightContainer = document.createElement('div');
        weightContainer.classList.add('weight-field');
        const weightLabel = document.createElement('label');
        weightLabel.textContent = '重量[kg]';
        const br1 = document.createElement('br');
        const weightInput = document.createElement('input');
        weightInput.classList.add('form-control');
        weightInput.setAttribute('type', 'text');
        weightInput.setAttribute('name', 'weight[]');

        const repContainer = document.createElement('div');
        repContainer.classList.add('rep-field');
        const repLabel = document.createElement('label');
        repLabel.textContent = '回数';
        const br2 = document.createElement('br');
        const repInput = document.createElement('input');
        repInput.classList.add('form-control');
        repInput.setAttribute('type', 'number');
        repInput.setAttribute('name', 'repetition[]');

        weightContainer.appendChild(weightLabel);
        weightContainer.appendChild(br1);
        weightContainer.appendChild(weightInput);

        repContainer.appendChild(repLabel);
        repContainer.appendChild(br2);
        repContainer.appendChild(repInput);

        fieldContainer.appendChild(weightContainer);
        fieldContainer.appendChild(repContainer);

        weightAndRepsFields.appendChild(fieldContainer);
      }
    }
  });

form.addEventListener('submit', function(event) {
    event.preventDefault(); // デフォルトのフォーム送信をキャンセル

    const formData = new FormData(form); // フォームデータを作成

    // Ajaxリクエストの作成
    const request = new XMLHttpRequest();
    request.open('POST', '/trainings'); // サーバーサイドのエンドポイントを指定

    request.onload = function() {
      if (request.status === 200) {
        // 成功時の処理
        const response = JSON.parse(request.responseText);
        console.log(response); // 応答のデータをログに出力などの処理を行う

        // ページのリロードなどの適切な処理を行う
      } else {
        // エラー時の処理
        console.error('リクエストエラー:', request.status);
      }
    };

    request.onerror = function() {
      console.error('ネットワークエラー');
    };

    request.send(formData); // フォームデータを送信
  });
});
*/