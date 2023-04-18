window.onload=function(){
    //获取标签
    let myChart = echarts.init(document.getElementById('map'));
    // let myChart1 = echarts.init(document.getElementById('map1'));
    let option = {
        tooltip : {
            trigger: 'item',
            formatter: '现有确诊<br/>{b}：{c}',
            backgroundColor: 'rgba(0,0,0,.5)',
            borderColor: 'rgba(0,0,0,.5)',
            textStyle: {
                color: '#ffffff'
            }
        },
        visualMap: [
            {
                left: 'left',
                bottom: '5%',
                splitList: [
                    {start: 100000, label: '>=100000', color: 'rgb(184,9,9)'},
                    {start: 1000, end: 9999, label: '1000~9999', color: 'rgb(230,69,70)'},
                    {start: 100, end: 999, label: '100~999', color: 'rgb(245,117,103)'},
                    {start: 10, end: 99, label: '10~99', color: 'rgb(255,153,133)'},
                    {start: 1, end: 9, label: '1~9', color: 'rgb(255,229,219)'},
                    {end: 0, label: '0',  color: '#ffffff'}
                ]
            }
        ],
        series: [{
            type: 'map',
            map: 'china',
            itemStyle: {
                borderColor: '#999'
            },
            emphasis: {
                itemStyle: {
                    areaColor: 'rgb(16,174,181)'
                },
                label: {
                    color: '#000000'
                }
            },
            label: {
                show: true,  //展示省份名称
                textStyle: {
                    color: '#000000',
                    fontSize: '11'
                }
            },
            data: [
                {name: '江西', value: 0},
                {name: '新疆', value: 0},
                {name: '西藏', value: 0},
                {name: '青海', value: 0},
                {name: '甘肃', value: 1},
                {name: '四川', value: 19},
                {name: '云南', value: 90},
                {name: '重庆', value: 0},
                {name: '贵州', value: 0},
                {name: '广西', value: 3},
                {name: '海南', value: 0},
                {name: '澳门', value: 0},
                {name: '香港', value: 168},
                {name: '广东', value: 38},
                {name: '湖南', value: 5},
                {name: '湖北', value: 2},
                {name: '福建', value: 24},
                {name: '台湾', value: 21},
                {name: '安徽', value: 0},
                {name: '浙江', value: 4},
                {name: '上海', value: 52},
                {name: '江苏', value: 8},
                {name: '河南', value: 5},
                {name: '河北', value: 0},
                {name: '陕西', value: 14},
                {name: '山西', value: 8},
                {name: '宁夏', value: 0},
                {name: '天津', value: 7},
                {name: '北京', value: 10},
                {name: '内蒙古', value: 2},
                {name: '辽宁', value: 1},
                {name: '吉林', value: 0},
                {name: '黑龙江', value: 0},
                {name: '山东', value: 4},
            ]
        }]
    };
    myChart.setOption(option);
    let option1 = {
        tooltip : {
            trigger: 'item',
            formatter: '累计确诊<br/>{b}：{c}',
            backgroundColor: 'rgba(0,0,0,.5)',
            borderColor: 'rgba(0,0,0,.5)',
            textStyle: {
                color: '#ffffff'
            }
        },
        visualMap: [
            {
                left: 'left',
                bottom: '5%',
                splitList: [
                    {start: 100000, label: '>=100000', color: 'rgb(184,9,9)'},
                    {start: 1000, end: 9999, label: '1000~9999', color: 'rgb(230,69,70)'},
                    {start: 100, end: 999, label: '100~999', color: 'rgb(245,117,103)'},
                    {start: 10, end: 99, label: '10~99', color: 'rgb(255,153,133)'},
                    {start: 1, end: 9, label: '1~9', color: 'rgb(255,229,219)'},
                    {end: 0, label: '0',  color: '#ffffff'}
                ]
            }
        ],
        series: [{
            type: 'map',
            map: 'china',
            itemStyle: {
                borderColor: '#999'
            },
            emphasis: {
                itemStyle: {
                    areaColor: 'rgb(16,174,181)'
                },
                label: {
                    color: '#000000'
                }
            },
            label: {
                show: true,  //展示省份名称
                textStyle: {
                    color: '#000000',
                    fontSize: '11'
                }
            },
            data: [
                {name: '江西', value: 937},
                {name: '新疆', value: 980},
                {name: '西藏', value: 1},
                {name: '青海', value: 18},
                {name: '甘肃', value: 193},
                {name: '四川', value: 955},
                {name: '云南', value: 323},
                {name: '重庆', value: 591},
                {name: '贵州', value: 147},
                {name: '广西', value: 270},
                {name: '海南', value: 171},
                {name: '澳门', value: 11111},
                {name: '香港', value: 11581},
                {name: '广东', value: 2299},
                {name: '湖南', value: 1044},
                {name: '湖北', value: 68154},
                {name: '福建', value: 580},
                {name: '台湾', value: 1058},
                {name: '安徽', value: 994},
                {name: '浙江', value: 1325},
                {name: '上海', value: 1925},
                {name: '江苏', value: 716},
                {name: '河南', value: 1311},
                {name: '河北', value: 1317},
                {name: '陕西', value: 578},
                {name: '山西', value: 248},
                {name: '宁夏', value: 75},
                {name: '天津', value: 376},
                {name: '北京', value: 1057},
                {name: '内蒙古', value: 377},
                {name: '辽宁', value: 408},
                {name: '吉林', value: 573},
                {name: '黑龙江', value: 1610},
                {name: '山东', value: 873},
            ]
        }]
    };
    // myChart1.setOption(option1);

    const tab_header = document.querySelector('.tab_header');
    const allLis = tab_header.getElementsByTagName('li');
    const tab_content = document.querySelector('.tab_content');
    const allDom = tab_content.querySelectorAll('.dom');
    // tab栏切换
    for(let i=0; i<allLis.length; i++){
        const li = allLis[i];
        li.index=i;

        li.onclick=function(){
            //1、清除同级别的选中样式类
            for(let j=0; j<allLis.length; j++){
                allLis[j].className="";
                allDom[j].style.display='none';
            }
            //2、设置当前的li标签选中样式类
            this.className="selected";
            allDom[this.index].style.display='block';
            if(i === 0){
                // let option = {
                //     tooltip : {
                //         trigger: 'item',
                //         formatter: '现有确诊<br/>{b}：{c}',
                //         backgroundColor: 'rgba(0,0,0,.5)',
                //         borderColor: 'rgba(0,0,0,.5)',
                //         textStyle: {
                //             color: '#ffffff'
                //         }
                //     },
                //     visualMap: [
                //         {
                //             x: 'left',
                //             y: 'bottom',
                //             splitList: [
                //                 {start: 100000, color: 'rgb(184,9,9)'},
                //                 {start: 1000, end: 9999, color: 'rgb(230,69,70)'},
                //                 {start: 100, end: 999, color: 'rgb(245,117,103)'},
                //                 {start: 10, end: 99, color: 'rgb(255,153,133)'},
                //                 {start: 1, end: 9, color: 'rgb(255,229,219)'},
                //                 {end: 0, color: '#ffffff'}
                //             ]
                //         }
                //     ],
                //     series: [{
                //         type: 'map',
                //         map: 'china',
                //         itemStyle: {
                //             borderColor: '#999'
                //         },
                //         emphasis: {
                //             itemStyle: {
                //                 areaColor: 'rgb(16,174,181)'
                //             },
                //             label: {
                //                 color: '#000000'
                //             }
                //         },
                //         label: {
                //             show: true,  //展示省份名称
                //             textStyle: {
                //                 color: '#000000',
                //                 fontSize: '11'
                //             }
                //         },
                //         data: [
                //             {name: '江西', value: 0},
                //             {name: '新疆', value: 0},
                //             {name: '西藏', value: 0},
                //             {name: '青海', value: 0},
                //             {name: '甘肃', value: 1},
                //             {name: '四川', value: 19},
                //             {name: '云南', value: 90},
                //             {name: '重庆', value: 0},
                //             {name: '贵州', value: 0},
                //             {name: '广西', value: 3},
                //             {name: '海南', value: 0},
                //             {name: '澳门', value: 0},
                //             {name: '香港', value: 168},
                //             {name: '广东', value: 38},
                //             {name: '湖南', value: 5},
                //             {name: '湖北', value: 2},
                //             {name: '福建', value: 24},
                //             {name: '台湾', value: 21},
                //             {name: '安徽', value: 0},
                //             {name: '浙江', value: 4},
                //             {name: '上海', value: 52},
                //             {name: '江苏', value: 8},
                //             {name: '河南', value: 5},
                //             {name: '河北', value: 0},
                //             {name: '陕西', value: 14},
                //             {name: '山西', value: 8},
                //             {name: '宁夏', value: 0},
                //             {name: '天津', value: 7},
                //             {name: '北京', value: 10},
                //             {name: '内蒙古', value: 2},
                //             {name: '辽宁', value: 1},
                //             {name: '吉林', value: 0},
                //             {name: '黑龙江', value: 0},
                //             {name: '山东', value: 4},
                //         ]
                //     }]
                // };
                myChart.setOption(option);
            } else {
                let myChart1 = echarts.init(document.getElementById('map1'));
                // let option1 = {
                //     tooltip : {
                //         trigger: 'item',
                //         formatter: '累计确诊<br/>{b}：{c}',
                //         backgroundColor: 'rgba(0,0,0,.5)',
                //         borderColor: 'rgba(0,0,0,.5)',
                //         textStyle: {
                //             color: '#ffffff'
                //         }
                //     },
                //     visualMap: [
                //         {
                //             x: 'left',
                //             y: 'bottom',
                //             splitList: [
                //                 {start: 100000, color: 'rgb(184,9,9)'},
                //                 {start: 1000, end: 9999, color: 'rgb(230,69,70)'},
                //                 {start: 100, end: 999, color: 'rgb(245,117,103)'},
                //                 {start: 10, end: 99, color: 'rgb(255,153,133)'},
                //                 {start: 1, end: 9, color: 'rgb(255,229,219)'},
                //                 {end: 0, color: '#ffffff'}
                //             ]
                //         }
                //     ],
                //     series: [{
                //         type: 'map',
                //         map: 'china',
                //         itemStyle: {
                //             borderColor: '#999'
                //         },
                //         emphasis: {
                //             itemStyle: {
                //                 areaColor: 'rgb(16,174,181)'
                //             },
                //             label: {
                //                 color: '#000000'
                //             }
                //         },
                //         label: {
                //             show: true,  //展示省份名称
                //             textStyle: {
                //                 color: '#000000',
                //                 fontSize: '11'
                //             }
                //         },
                //         data: [
                //             {name: '江西', value: 937},
                //             {name: '新疆', value: 980},
                //             {name: '西藏', value: 1},
                //             {name: '青海', value: 18},
                //             {name: '甘肃', value: 193},
                //             {name: '四川', value: 955},
                //             {name: '云南', value: 323},
                //             {name: '重庆', value: 591},
                //             {name: '贵州', value: 147},
                //             {name: '广西', value: 270},
                //             {name: '海南', value: 171},
                //             {name: '澳门', value: 11111},
                //             {name: '香港', value: 11581},
                //             {name: '广东', value: 2299},
                //             {name: '湖南', value: 1044},
                //             {name: '湖北', value: 68154},
                //             {name: '福建', value: 580},
                //             {name: '台湾', value: 1058},
                //             {name: '安徽', value: 994},
                //             {name: '浙江', value: 1325},
                //             {name: '上海', value: 1925},
                //             {name: '江苏', value: 716},
                //             {name: '河南', value: 1311},
                //             {name: '河北', value: 1317},
                //             {name: '陕西', value: 578},
                //             {name: '山西', value: 248},
                //             {name: '宁夏', value: 75},
                //             {name: '天津', value: 376},
                //             {name: '北京', value: 1057},
                //             {name: '内蒙古', value: 377},
                //             {name: '辽宁', value: 408},
                //             {name: '吉林', value: 573},
                //             {name: '黑龙江', value: 1610},
                //             {name: '山东', value: 873},
                //         ]
                //     }]
                // };
                myChart1.setOption(option1);
            }
        }
    }



};