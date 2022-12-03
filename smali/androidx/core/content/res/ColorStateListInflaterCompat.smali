.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "ColorStateListInflaterCompat.java"


# static fields
.field public static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "selector"

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x14

    new-array v6, v5, [[I

    new-array v5, v5, [I

    const/4 v7, 0x0

    move v8, v7

    .line 4
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v4, :cond_22

    .line 5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    const/4 v11, 0x3

    if-ge v10, v3, :cond_0

    if-eq v9, v11, :cond_22

    :cond_0
    const/4 v12, 0x2

    if-ne v9, v12, :cond_21

    if-gt v10, v3, :cond_21

    .line 6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_17

    .line 7
    :cond_1
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v2, v1, v9, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    :goto_1
    const/4 v10, -0x1

    .line 10
    invoke-virtual {v9, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const v14, -0xff01

    if-eq v13, v10, :cond_5

    .line 11
    sget-object v10, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/TypedValue;

    if-nez v15, :cond_3

    .line 12
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 13
    invoke-virtual {v10, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14
    :cond_3
    invoke-virtual {v0, v13, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 15
    iget v10, v15, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1c

    if-lt v10, v15, :cond_4

    const/16 v15, 0x1f

    if-gt v10, v15, :cond_4

    move v10, v4

    goto :goto_2

    :cond_4
    move v10, v8

    :goto_2
    if-nez v10, :cond_5

    .line 16
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-static {v0, v10, v2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 17
    :catch_0
    invoke-virtual {v9, v8, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v9, v8, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 19
    :goto_3
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v13, :cond_6

    .line 20
    invoke-virtual {v9, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 22
    invoke-virtual {v9, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 23
    :cond_7
    :goto_4
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, 0x4

    if-eqz v4, :cond_8

    .line 24
    invoke-virtual {v9, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    goto :goto_5

    .line 25
    :cond_8
    invoke-virtual {v9, v13, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 26
    :goto_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    .line 28
    new-array v11, v9, [I

    move v12, v8

    :goto_6
    if-ge v8, v9, :cond_b

    .line 29
    invoke-interface {v1, v8}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v13

    const v15, 0x10101a5

    if-eq v13, v15, :cond_a

    const v15, 0x101031f

    if-eq v13, v15, :cond_a

    const v15, 0x7f040034

    if-eq v13, v15, :cond_a

    const v15, 0x7f04025f

    if-eq v13, v15, :cond_a

    add-int/lit8 v15, v12, 0x1

    const/4 v0, 0x0

    .line 30
    invoke-interface {v1, v8, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    neg-int v13, v13

    .line 31
    :goto_7
    aput v13, v11, v12

    move v12, v15

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    .line 32
    :cond_b
    invoke-static {v11, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    const/4 v8, 0x0

    cmpl-float v9, v4, v8

    const/high16 v11, 0x42c80000    # 100.0f

    if-ltz v9, :cond_c

    cmpg-float v9, v4, v11

    if-gtz v9, :cond_c

    const/4 v9, 0x1

    goto :goto_8

    :cond_c
    const/4 v9, 0x0

    :goto_8
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v14, v12

    if-nez v12, :cond_d

    if-nez v9, :cond_d

    const/4 v4, 0x1

    move/from16 v21, v3

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    goto/16 :goto_14

    .line 33
    :cond_d
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v14

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    const/16 v13, 0xff

    const/4 v14, 0x0

    .line 34
    invoke-static {v12, v14, v13}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v12

    if-eqz v9, :cond_1c

    .line 35
    invoke-static {v10}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v9

    .line 36
    iget v10, v9, Landroidx/core/content/res/CamColor;->mHue:F

    .line 37
    iget v9, v9, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 38
    sget-object v13, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    float-to-double v14, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_1b

    .line 39
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-double v14, v14

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-lez v14, :cond_1b

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_e

    goto/16 :goto_12

    :cond_e
    cmpg-float v14, v10, v8

    if-gez v14, :cond_f

    move v10, v8

    goto :goto_9

    :cond_f
    const/high16 v14, 0x43b40000    # 360.0f

    .line 40
    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    :goto_9
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v1, v14

    move/from16 v16, v15

    move v14, v9

    move v15, v11

    move v11, v14

    move v9, v8

    :goto_a
    sub-float v17, v8, v11

    .line 41
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3ecccccd    # 0.4f

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_19

    const/high16 v17, 0x447a0000    # 1000.0f

    const/16 v18, 0x0

    move v2, v15

    move-object/from16 v19, v18

    move v15, v9

    move/from16 v18, v17

    :goto_b
    sub-float v20, v9, v2

    .line 42
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3c23d70a    # 0.01f

    cmpl-float v20, v20, v21

    move/from16 v21, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v20, :cond_15

    invoke-static {v2, v9, v3, v9}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v15

    .line 43
    invoke-static {v15, v14, v10}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v3

    move/from16 v22, v2

    .line 44
    sget-object v2, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-virtual {v3, v2}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v2

    .line 45
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v3

    .line 46
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v23

    .line 47
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v24

    .line 48
    sget-object v25, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    const/16 v26, 0x1

    .line 49
    aget-object v27, v25, v26

    const/16 v28, 0x0

    aget v27, v27, v28

    mul-float v3, v3, v27

    aget-object v27, v25, v26

    aget v27, v27, v26

    mul-float v23, v23, v27

    add-float v23, v23, v3

    aget-object v3, v25, v26

    const/16 v25, 0x2

    aget v3, v3, v25

    mul-float v24, v24, v3

    add-float v24, v24, v23

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v3, v24, v3

    const v23, 0x3c111aa7

    cmpg-float v23, v3, v23

    if-gtz v23, :cond_10

    const v23, 0x4461d2f7

    mul-float v3, v3, v23

    move/from16 v23, v14

    move/from16 v24, v15

    goto :goto_c

    :cond_10
    move/from16 v23, v14

    move/from16 v24, v15

    float-to-double v14, v3

    .line 50
    invoke-static {v14, v15}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v14

    double-to-float v3, v14

    const/high16 v14, 0x42e80000    # 116.0f

    mul-float/2addr v3, v14

    const/high16 v14, 0x41800000    # 16.0f

    sub-float/2addr v3, v14

    :goto_c
    sub-float v14, v4, v3

    .line 51
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3e4ccccd    # 0.2f

    cmpg-float v15, v14, v15

    if-gez v15, :cond_11

    .line 52
    invoke-static {v2}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v2

    .line 53
    iget v15, v2, Landroidx/core/content/res/CamColor;->mJ:F

    move/from16 v25, v9

    .line 54
    iget v9, v2, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 55
    invoke-static {v15, v9, v10}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v9

    .line 56
    iget v15, v2, Landroidx/core/content/res/CamColor;->mJstar:F

    move/from16 v27, v10

    iget v10, v9, Landroidx/core/content/res/CamColor;->mJstar:F

    sub-float/2addr v15, v10

    .line 57
    iget v10, v2, Landroidx/core/content/res/CamColor;->mAstar:F

    move/from16 v28, v14

    iget v14, v9, Landroidx/core/content/res/CamColor;->mAstar:F

    sub-float/2addr v10, v14

    .line 58
    iget v14, v2, Landroidx/core/content/res/CamColor;->mBstar:F

    iget v9, v9, Landroidx/core/content/res/CamColor;->mBstar:F

    sub-float/2addr v14, v9

    mul-float/2addr v15, v15

    mul-float/2addr v10, v10

    add-float/2addr v10, v15

    mul-float/2addr v14, v14

    add-float/2addr v14, v10

    float-to-double v9, v14

    .line 59
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    const-wide v14, 0x3ff68f5c28f5c28fL    # 1.41

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    const-wide v5, 0x3fe428f5c28f5c29L    # 0.63

    .line 60
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v14

    double-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_12

    move-object/from16 v19, v2

    move/from16 v18, v5

    move/from16 v17, v28

    goto :goto_d

    :cond_11
    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v25, v9

    move/from16 v27, v10

    :cond_12
    :goto_d
    const/4 v15, 0x0

    cmpl-float v2, v17, v15

    if-nez v2, :cond_13

    cmpl-float v2, v18, v15

    if-nez v2, :cond_13

    goto :goto_f

    :cond_13
    cmpg-float v2, v3, v4

    if-gez v2, :cond_14

    move/from16 v2, v22

    move/from16 v9, v24

    goto :goto_e

    :cond_14
    move/from16 v2, v24

    move/from16 v9, v25

    :goto_e
    move/from16 v3, v21

    move/from16 v14, v23

    move/from16 v10, v27

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    goto/16 :goto_b

    :cond_15
    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v27, v10

    move/from16 v23, v14

    const/16 v26, 0x1

    :goto_f
    move v9, v15

    move-object/from16 v2, v19

    if-eqz v16, :cond_17

    if-eqz v2, :cond_16

    .line 61
    invoke-virtual {v2, v13}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v10

    goto :goto_13

    :cond_16
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v11, v8, v3, v8}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v14

    const/high16 v15, 0x42c80000    # 100.0f

    const/16 v16, 0x0

    :goto_10
    move-object/from16 v2, p3

    move/from16 v3, v21

    move/from16 v10, v27

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    goto/16 :goto_a

    :cond_17
    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_18

    move/from16 v11, v23

    goto :goto_11

    :cond_18
    move-object v1, v2

    move/from16 v8, v23

    :goto_11
    invoke-static {v11, v8, v3, v8}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v14

    const/high16 v15, 0x42c80000    # 100.0f

    goto :goto_10

    :cond_19
    move/from16 v21, v3

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    const/16 v26, 0x1

    if-nez v1, :cond_1a

    .line 62
    invoke-static {v4}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result v10

    goto :goto_13

    .line 63
    :cond_1a
    invoke-virtual {v1, v13}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v10

    goto :goto_13

    :cond_1b
    :goto_12
    move/from16 v21, v3

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    const/16 v26, 0x1

    .line 64
    invoke-static {v4}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result v10

    goto :goto_13

    :cond_1c
    move/from16 v21, v3

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    const/16 v26, 0x1

    :goto_13
    const v1, 0xffffff

    and-int/2addr v1, v10

    shl-int/lit8 v2, v12, 0x18

    or-int v10, v1, v2

    move/from16 v4, v26

    :goto_14
    add-int/lit8 v1, v7, 0x1

    move-object/from16 v5, v29

    .line 65
    array-length v2, v5

    const/16 v3, 0x8

    if-le v1, v2, :cond_1e

    const/4 v2, 0x4

    if-gt v7, v2, :cond_1d

    move v2, v3

    goto :goto_15

    :cond_1d
    mul-int/lit8 v2, v7, 0x2

    .line 66
    :goto_15
    new-array v2, v2, [I

    const/4 v6, 0x0

    .line 67
    invoke-static {v5, v6, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v2

    .line 68
    :cond_1e
    aput v10, v5, v7

    move-object/from16 v6, v30

    .line 69
    array-length v2, v6

    if-le v1, v2, :cond_20

    .line 70
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x4

    if-gt v7, v8, :cond_1f

    goto :goto_16

    :cond_1f
    mul-int/lit8 v3, v7, 0x2

    :goto_16
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 71
    invoke-static {v6, v3, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v2

    .line 72
    :cond_20
    aput-object v0, v6, v7

    .line 73
    check-cast v6, [[I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move v7, v1

    move/from16 v3, v21

    move-object/from16 v1, p2

    goto/16 :goto_0

    :cond_21
    :goto_17
    move/from16 v21, v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v21

    goto/16 :goto_0

    .line 74
    :cond_22
    new-array v0, v7, [I

    .line 75
    new-array v1, v7, [[I

    const/4 v2, 0x0

    .line 76
    invoke-static {v5, v2, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    invoke-static {v6, v2, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 79
    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid color state list tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
