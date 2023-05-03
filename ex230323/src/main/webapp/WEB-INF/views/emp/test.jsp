<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- DataPicker -->
    <link
      rel="stylesheet"
      href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css"
    />
    <script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.js"></script>

    <!-- Toast UI xlsx -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.1/xlsx.full.min.js"></script>

    <!-- Toast UI DatePicker -->
    <link
      rel="stylesheet"
      href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css"
    />
    <script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.js"></script>

    <!-- Toast UI -->
    <link
      rel="stylesheet"
      href="https://uicdn.toast.com/grid/latest/tui-grid.css"
    />
    <script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <div id="test"></div>

    <script>
      console.log("출력");
      const Grid = tui.Grid;

      // const dataSource = {
      //   contentType: "application/json",
      //   api: {
      //     readData: {
      //       url: "testList",
      //       method: "GET",
      //       success: function (data) {},
      //     },
      //   },
      // };
      // console.log(dataSource);

      const test = new Grid({
        el: document.getElementById("test"), // Container element
        rowHeaders: ["checkbox"],
        columns: [
          {
            header: "사원ID",
            name: "employeeId",
            sortingType: "asc",
            sortable: true,
          },
          {
            header: "이름",
            name: "firstName",
            sortingType: "asc",
            sortable: true,
          },
          {
            header: "성",
            name: "lastName",
            sortingType: "asc",
            sortable: true,
          },
          {
            header: "입사일",
            name: "hireDate",
            sortingType: "asc",
            sortable: true,
            formatter: function (e) {
              return productDate(e.value);
            },
          },
          {
            header: "급여",
            name: "salary",
          },
        ],
        bodyHeight: 420,
        pageOptions: {
          useClient: true,
          type: "pagination",
          perPage: 10,
          pageButtonCount: 10,
        },
      });

      // $.ajax({
      //   url: "testList",
      //   success: function (data) {
      //     console.log(data);
      //     test.resetData(data);
      //   },
      //   error: function (reject) {
      //     console.log(reject);
      //   },
      // });

      const testList = (page) => {
        $.ajax({
          url: `testList?page=${page}`, // 페이지 번호를 전달
          success: function (data) {
            console.log(data);
            test.resetData(data);
            test.setPage(page); // 현재 페이지로 설정
          },
          error: function (reject) {
            console.log(reject);
          },
        });
      };

      testList(1); // 첫번째 페이지 로딩

      function productDate(timestamp) {
        let date = new Date(timestamp);
        let year = date.getFullYear();
        let month = String(date.getMonth() + 1).padStart(2, "0");
        let day = String(date.getDate()).padStart(2, "0");
        let formattedDate = year + "-" + month + "-" + day;
        return formattedDate;
      }
    </script>
  </body>
</html>
