package com.briup.crm.common.utils;

import java.awt.Color;
import java.awt.Font;
import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis3D;
import org.jfree.chart.axis.NumberAxis3D;
import org.jfree.chart.axis.NumberTickUnit;
import org.jfree.chart.labels.ItemLabelAnchor;
import org.jfree.chart.labels.ItemLabelPosition;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer3D;
import org.jfree.chart.servlet.ServletUtilities;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.PieDataset;
import org.jfree.ui.TextAnchor;
import org.jfree.util.Rotation;

public class JFreeChartUtil {
	public static String createBarChart(String title, String categoryAxisLabel, String valueAxisLabel,CategoryDataset dataset,HttpServletRequest request) throws Exception {
		// 标题 横坐标 纵坐标 数据集
		JFreeChart chart = ChartFactory.createBarChart3D(title, categoryAxisLabel, valueAxisLabel, dataset, PlotOrientation.VERTICAL, // 图表的方向
				true, // 是否显示图例
				true, // 是否显示工具提示
				true);// 是否产生url链接
		
		// 处理乱码
		// 处理主题乱码
		chart.getTitle().setFont(new Font("黑体", Font.PLAIN, 18));
		// 处理子标题乱码
		chart.getLegend().setItemFont(new Font("黑体", Font.PLAIN, 18));

		// 获取图形的绘制机构
		CategoryPlot categoryPlot = (CategoryPlot) chart.getPlot();

		// 设置网格背景颜色
		categoryPlot.setBackgroundPaint(Color.white);
		// 设置网格竖线颜色
		categoryPlot.setDomainGridlinePaint(Color.pink);
		// 设置网格横线颜色
		categoryPlot.setRangeGridlinePaint(Color.pink);
		// 获取x轴
		CategoryAxis3D categoryAxis3D = (CategoryAxis3D) categoryPlot.getDomainAxis();
		// 获取y轴
		NumberAxis3D numberAxis3D = (NumberAxis3D) categoryPlot.getRangeAxis();

		// 处理x轴外乱码
		categoryAxis3D.setLabelFont(new Font("黑体", Font.PLAIN, 11));
		// 处理x轴上乱码
		categoryAxis3D.setTickLabelFont(new Font("黑体", Font.PLAIN, 11));

		// 处理y轴外上乱码
		numberAxis3D.setLabelFont(new Font("黑体", Font.PLAIN, 12));
		numberAxis3D.setTickLabelFont(new Font("黑体", Font.PLAIN, 12));

		// 设置y轴的刻度
		numberAxis3D.setAutoTickUnitSelection(true);
		NumberTickUnit unit = new NumberTickUnit(40);
		numberAxis3D.setTickUnit(unit);

		// 显示柱的数值，并修改该数值的字体属性
		BarRenderer3D barRenderer3D = (BarRenderer3D) categoryPlot.getRenderer();
		barRenderer3D.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
		barRenderer3D.setBaseItemLabelsVisible(true);

		barRenderer3D.setBasePositiveItemLabelPosition(
				new ItemLabelPosition(ItemLabelAnchor.OUTSIDE12, TextAnchor.BASELINE_LEFT));

		barRenderer3D.setBaseItemLabelFont(new Font("黑体", Font.PLAIN, 15));
		barRenderer3D.setMaximumBarWidth(0.05);
		String fileName = ServletUtilities.saveChartAsJPEG(chart, 700, 400, null, request.getSession());
		return fileName;
	}

	public static String createPieChart(String title,PieDataset dataset,HttpServletRequest request) throws Exception {
		
		//ChartFactory.createPieChart3D(title, (PieDataset) dataset, true, true, false);
		JFreeChart chart = ChartFactory.createPieChart3D(title, dataset, true, true, false);
		chart.getTitle().setFont(new Font("黑体", Font.PLAIN, 18));
		// 处理子标题乱码
		chart.getLegend().setItemFont(new Font("黑体", Font.PLAIN, 18));
		
		PiePlot3D plot = (PiePlot3D)chart.getPlot();
		//处理字体乱码
		plot.setLabelFont(new Font("宋体",Font.BOLD,18));
		//设置旋转角度
		plot.setStartAngle(180.0);
		//设置旋转方向为顺时针
		plot.setDirection(Rotation.CLOCKWISE);
		//设置图标透明度0.0~1.0范围
		plot.setForegroundAlpha(0.5F);
		//plot.setCircular(true);
		//plot.setCircular(true, true);
		
		plot.setNoDataMessage("没有有效数据显示");
		plot.setLabelGenerator(new StandardPieSectionLabelGenerator("{0}：{2}",new DecimalFormat("0.00"),new DecimalFormat("0.00%")) );
		String fileName = ServletUtilities.saveChartAsJPEG(chart, 700, 400, null, request.getSession());
		return fileName;
		//return chart;
	}
}
