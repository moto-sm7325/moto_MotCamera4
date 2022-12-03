.class public Lcom/motorola/camera/settings/SettingsFactory;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# direct methods
.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 3
    new-instance v2, Lcom/motorola/camera/settings/Setting;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p2, p3, v3}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 4
    iput-object v1, v2, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 5
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 6
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 7
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 8
    iput-object p4, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 9
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 12
    new-instance v2, Lcom/motorola/camera/settings/Setting;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p2, p3, v3}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_0

    .line 13
    invoke-virtual {v2, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 14
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 15
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iput-object v1, v2, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 17
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 18
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 19
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_1

    .line 20
    invoke-virtual {v1, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 21
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 22
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 23
    aget v0, p5, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    iput-object p6, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 26
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 42
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 43
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_2

    .line 44
    invoke-virtual {v1, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 45
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 46
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 47
    aget v0, p5, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 48
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p6, :cond_1

    .line 49
    aget v0, p6, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    if-eq p7, p2, :cond_3

    .line 51
    iput p7, v1, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    :cond_3
    if-eq p8, p2, :cond_4

    .line 52
    iput p8, v1, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 53
    :cond_4
    iput-object p9, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 54
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 55
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 56
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    invoke-direct {v1, v0, p2, p3, p10}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_2

    .line 57
    invoke-virtual {v1, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 58
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 59
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 60
    aget p10, p5, p2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    .line 61
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v0, p3, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p6, :cond_1

    .line 62
    aget p10, p6, p2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    .line 63
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/Map;

    invoke-interface {v0, p3, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    if-eq p7, p2, :cond_3

    .line 64
    iput p7, v1, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    :cond_3
    if-eq p8, p2, :cond_4

    .line 65
    iput p8, v1, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 66
    :cond_4
    iput-object p9, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 67
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 27
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 28
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_3

    .line 29
    invoke-virtual {v1, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 30
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 31
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 32
    aget v0, p5, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 33
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p6, :cond_1

    .line 34
    aget v0, p6, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValueToToastResMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p7, :cond_2

    .line 36
    aget v0, p7, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 37
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, -0x1

    if-eq p8, p2, :cond_4

    .line 38
    iput p8, v1, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    :cond_4
    if-eq p9, p2, :cond_5

    .line 39
    iput p9, v1, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 40
    :cond_5
    iput-object p10, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 41
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSettingsMap()Ljava/util/Map;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;"
        }
    .end annotation

    const-string v1, "SettingsFactory"

    .line 1
    sget-object v12, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->parseJson(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error: JSON parsing exception "

    .line 5
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MARGIN_THRESH_TO_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_TARGET_MARGIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_LAST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v26, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 10
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLAY_TUTORIAL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 11
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 12
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP_INDEX:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v28, -0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 13
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 14
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 15
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 16
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 17
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 18
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 19
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SEGMENTATION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 20
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PANORAMA_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 21
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 22
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 23
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLOW_MOTION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 24
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_SETTING_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 25
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 26
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 27
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_WHEEL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 28
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_WHEEL_ANIMATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 29
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXITED_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 30
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 31
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 32
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ALWAYS_AWARE_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AA_FIRST_USE_VALUES:Ljava/util/List;

    .line 34
    invoke-static {v11, v0, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 35
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 36
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TIMELAPSE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 37
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MONO_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 38
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SET_PURE_RAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 39
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 40
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MODE_DRAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 41
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SMART_CAM_TIP_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 42
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SMART_CAM_DISABLE_TIP_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 43
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 44
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_EXIT_CAMERA_AFTER_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 45
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_EXITED_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 46
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CHECK_LOCATION_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 47
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 48
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 49
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 50
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 51
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 52
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_NO_LEVELER_CAPTURE_IMAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 54
    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 55
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 56
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 57
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOOLTIP_DISMISSED_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 58
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_AR_STICKERS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 59
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_SUPER_NIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 60
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_AI_SCENE_ADJUSTMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 61
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_AI_SCENE_DETECTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 62
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 63
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_WIFI_SUGGESTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 64
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELECT_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 65
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 66
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PORTRAIT_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 67
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_RECORD_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 68
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 69
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 70
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLIDE_SCAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 71
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_DETECT_ALWAYS_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 72
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 73
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_TORCH_OFF:Ljava/util/List;

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    const v23, 0x7f12031e

    const v6, 0x7f12034d

    sget-object v15, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/16 v29, 0x4

    const v24, 0x7f12034d

    move-object/from16 v30, v15

    move-object v15, v11

    move/from16 v18, v29

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v3

    move-object/from16 v25, v30

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 74
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_OFF:Ljava/util/List;

    invoke-static {v11, v3, v4, v2, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 75
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v3, v4, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 76
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v0, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_3

    new-array v4, v0, [I

    fill-array-data v4, :array_4

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const v23, 0x7f120340

    move-object/from16 v19, v5

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v0

    move/from16 v24, v6

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 77
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ON_OFF:Ljava/util/List;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/16 v21, 0x0

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    const v23, 0x7f12031a

    const v24, 0x7f12031a

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v22, v3

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 78
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v3, v8, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 79
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR_VALUES:Ljava/util/List;

    const/4 v3, 0x5

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    new-array v6, v3, [I

    fill-array-data v6, :array_9

    new-array v15, v3, [I

    fill-array-data v15, :array_a

    const v31, 0x7f120351

    const v32, 0x7f120351

    const v33, 0x7f120351

    const v34, 0x7f120351

    move-object/from16 v22, v15

    move-object v15, v11

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move/from16 v23, v33

    move/from16 v24, v34

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 80
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->HDR_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    new-array v6, v3, [I

    fill-array-data v6, :array_c

    new-array v15, v3, [I

    fill-array-data v15, :array_d

    const/16 v29, 0x2

    move-object/from16 v22, v15

    move-object v15, v11

    move/from16 v18, v29

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 81
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->HDR_BACK:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    new-array v6, v3, [I

    fill-array-data v6, :array_f

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v3

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 82
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_3D_HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    new-array v4, v2, [I

    fill-array-data v4, :array_12

    new-array v2, v2, [I

    fill-array-data v2, :array_13

    const/16 v18, 0x4

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v2

    move/from16 v23, v31

    move/from16 v24, v32

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 83
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v15, v2, [I

    fill-array-data v15, :array_14

    const/4 v6, 0x2

    const/4 v4, 0x1

    move-object v2, v11

    move/from16 v29, v4

    move-object v4, v8

    move-object/from16 v31, v1

    move-object v1, v5

    move v5, v6

    move-object v6, v9

    move/from16 v32, v7

    move-object v7, v15

    move-object v15, v8

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 84
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_15

    const/16 v33, 0x2

    move-object v2, v11

    move-object v4, v10

    move/from16 v5, v33

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 85
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 86
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_VALUES:Ljava/util/List;

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_16

    move-object v2, v11

    .line 87
    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 88
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TIPS_TO_SHOW_QUANTITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v11, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 89
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TIPS_UNREAD_BADGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 90
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v4, [I

    fill-array-data v7, :array_17

    move-object v2, v11

    move-object v4, v10

    move-object v6, v9

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 91
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_18

    move-object v2, v11

    move-object v4, v15

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 92
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_19

    move-object v2, v11

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 93
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_1a

    move-object v2, v11

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 94
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_1b

    move-object v2, v11

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 95
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_1c

    move-object v2, v11

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 96
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_1d

    new-array v8, v2, [I

    fill-array-data v8, :array_1e

    const v16, 0x7f120217

    const v17, 0x7f120217

    move-object v2, v11

    move-object/from16 v34, v9

    move/from16 v9, v16

    move-object/from16 v35, v10

    move/from16 v10, v17

    move-object/from16 v36, v11

    move-object v11, v12

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 97
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v11, 0x2

    new-array v7, v11, [I

    fill-array-data v7, :array_1f

    move-object/from16 v2, v36

    move-object/from16 v6, v34

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 98
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v11, [I

    fill-array-data v7, :array_20

    move-object/from16 v4, v35

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 99
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v2, v11, [I

    fill-array-data v2, :array_21

    new-array v3, v11, [I

    fill-array-data v3, :array_22

    new-array v4, v11, [I

    fill-array-data v4, :array_23

    const v23, 0x7f1201fb

    const v24, 0x7f1201fb

    const/4 v5, 0x2

    move-object v10, v15

    move-object/from16 v15, v36

    move-object/from16 v17, v10

    move/from16 v18, v5

    move-object/from16 v19, v34

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 100
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v2, v11, [I

    fill-array-data v2, :array_24

    new-array v3, v11, [I

    fill-array-data v3, :array_25

    new-array v4, v11, [I

    fill-array-data v4, :array_26

    const v23, 0x7f1201f9

    const v24, 0x7f1201f9

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 101
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v11, [I

    fill-array-data v7, :array_27

    move-object/from16 v2, v36

    move-object v4, v10

    move/from16 v5, v33

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 102
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->STORAGE_VALUES:Ljava/util/List;

    new-array v7, v11, [I

    fill-array-data v7, :array_28

    new-array v8, v11, [I

    fill-array-data v8, :array_29

    const v9, 0x7f120379

    const/4 v15, -0x1

    sget-object v16, Lcom/motorola/camera/settings/Setting$UpdateType;->PERMISSION_CHECK:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object/from16 v37, v10

    move v10, v15

    move v15, v11

    move-object/from16 v11, v16

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 103
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v10, v34

    move-object/from16 v11, v36

    move-object/from16 v9, v37

    invoke-static {v11, v2, v9, v15, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 104
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_DOC_POINT:Landroid/graphics/Point;

    move/from16 v8, v29

    invoke-static {v11, v2, v3, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 105
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v15, [I

    fill-array-data v7, :array_2a

    sget-object v15, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_ROI:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object v2, v11

    move-object v4, v9

    move-object v6, v10

    move-wide/from16 v33, v13

    move v13, v8

    move-object v8, v15

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 106
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 107
    iget-object v3, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 108
    new-instance v4, Lcom/motorola/camera/settings/Setting;

    const/4 v5, 0x2

    move-object/from16 v14, v35

    invoke-direct {v4, v3, v14, v5, v13}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v10, :cond_0

    .line 109
    invoke-virtual {v4, v10}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v7, v32

    .line 110
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_0

    .line 111
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 112
    :cond_0
    iput-object v12, v4, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 113
    invoke-virtual {v11, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_2b

    const/4 v15, 0x2

    move-object v2, v11

    move-object v4, v9

    move v5, v15

    move-object v6, v10

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 115
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_2c

    move-object v2, v11

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 116
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->TIMER_VALUES:Ljava/util/List;

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_2d

    new-array v8, v2, [I

    fill-array-data v8, :array_2e

    const v15, 0x7f12033c

    const v16, 0x7f12037a

    const/4 v5, 0x4

    move-object v2, v11

    move-object/from16 v38, v9

    move v9, v15

    move-object v15, v10

    move/from16 v10, v16

    move-object/from16 v36, v11

    move-object v11, v12

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 117
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    const/16 v2, 0x1f

    new-array v7, v2, [I

    fill-array-data v7, :array_2f

    new-array v8, v2, [I

    fill-array-data v8, :array_30

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x2

    move-object/from16 v2, v36

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 118
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v11, v36

    invoke-static {v11, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 119
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v10, ""

    invoke-static {v11, v2, v10, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 120
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2, v10, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 121
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION_VALUES:Ljava/util/List;

    new-array v7, v4, [I

    fill-array-data v7, :array_31

    const/4 v8, 0x2

    move-object v2, v11

    move-object v4, v5

    move v5, v8

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 122
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 123
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 124
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_MODE_VALUES_1:Ljava/util/List;

    .line 125
    sget-object v9, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 126
    new-instance v6, Lcom/motorola/camera/settings/Setting;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v3, v7, v13}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {v6, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v7, v32

    .line 128
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_1

    .line 129
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 130
    :cond_1
    iput-object v9, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 131
    invoke-virtual {v11, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_MODE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v11, v2, v14, v3, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 133
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 134
    new-instance v5, Lcom/motorola/camera/settings/Setting;

    const/4 v6, 0x3

    invoke-direct {v5, v4, v3, v6, v6}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 135
    iput-object v9, v5, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 136
    invoke-virtual {v11, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 138
    new-instance v5, Lcom/motorola/camera/settings/Setting;

    invoke-direct {v5, v4, v3, v6, v6}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 139
    iput-object v9, v5, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 140
    invoke-virtual {v11, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_AE_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v8, v38

    invoke-static {v11, v2, v8, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 142
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v29, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_VALUES:Ljava/util/List;

    const/16 v7, 0xd

    new-array v6, v7, [I

    fill-array-data v6, :array_32

    new-array v5, v7, [I

    fill-array-data v5, :array_33

    const v16, 0x7f120317

    const v17, 0x7f120317

    const/16 v18, 0x2

    move-object v2, v11

    move-object v4, v13

    move-object/from16 v19, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v29

    move-object/from16 v7, v18

    move-object/from16 v39, v8

    move-object/from16 v8, v19

    move-object/from16 v40, v9

    move/from16 v9, v16

    move-object/from16 v41, v10

    move/from16 v10, v17

    move-object/from16 v36, v11

    move-object/from16 v11, v30

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 143
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_VALUES:Ljava/util/List;

    move/from16 v2, v32

    .line 144
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/util/Size;

    const-string v2, "resolutions"

    .line 145
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-interface {v11}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    .line 147
    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 148
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-interface {v11}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    .line 150
    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v8

    const v9, 0x7f120334

    const v10, 0x7f120334

    const/4 v5, 0x2

    move-object/from16 v2, v36

    move-object v6, v11

    move-object/from16 v16, v15

    move-object v15, v11

    move-object/from16 v11, v30

    .line 151
    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 152
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v32, 0x1e

    .line 153
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v17, Lcom/motorola/camera/settings/SettingsManager;->FRAME_RATE_VALUES:Ljava/util/List;

    const/4 v2, 0x7

    new-array v7, v2, [I

    fill-array-data v7, :array_34

    new-array v8, v2, [I

    fill-array-data v8, :array_35

    const v9, 0x7f120326

    const v10, 0x7f120326

    const/4 v5, 0x4

    move-object/from16 v2, v36

    move-object/from16 v6, v17

    .line 154
    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 155
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v2, 0xd

    new-array v7, v2, [I

    fill-array-data v7, :array_36

    new-array v8, v2, [I

    fill-array-data v8, :array_37

    const v9, 0x7f120317

    const v10, 0x7f120317

    const/16 v18, 0x2

    move-object/from16 v2, v36

    move-object v4, v13

    move/from16 v5, v18

    move-object/from16 v6, v29

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 156
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v13, 0x0

    .line 157
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/util/Size;

    .line 158
    invoke-static {v15}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper;->getVideoResolutionStrings(Ljava/util/List;)[I

    move-result-object v7

    .line 159
    invoke-static {v15}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper;->getVideoResolutionIcons(Ljava/util/List;)[I

    move-result-object v8

    const v9, 0x7f120334

    const v10, 0x7f120334

    move-object/from16 v2, v36

    move-object v6, v15

    .line 160
    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 161
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 162
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x7

    new-array v7, v2, [I

    fill-array-data v7, :array_38

    new-array v8, v2, [I

    fill-array-data v8, :array_39

    const v9, 0x7f120326

    const v10, 0x7f120326

    const/4 v5, 0x4

    move-object/from16 v2, v36

    move-object/from16 v6, v17

    .line 163
    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 164
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAMCORDER_PROFILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v10, v36

    invoke-static {v10, v2, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 165
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v3, 0x40f00000    # 7.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TIMELAPSE_VALUES:Ljava/util/List;

    invoke-static {v10, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 166
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v9, 0x2

    new-array v3, v9, [I

    fill-array-data v3, :array_3a

    new-array v4, v9, [I

    fill-array-data v4, :array_3b

    const v22, 0x7f120339

    const v23, 0x7f12046d

    const/16 v25, 0x2

    move-object/from16 v8, v16

    move-object v15, v10

    move-object/from16 v16, v2

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v30

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;I)V

    .line 167
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL_ON_OFF:Ljava/util/List;

    new-array v7, v5, [I

    fill-array-data v7, :array_3c

    new-array v15, v5, [I

    fill-array-data v15, :array_3d

    const v16, 0x7f120330

    const v17, 0x7f120448

    move-object v2, v10

    move/from16 v5, v18

    move-object/from16 v42, v8

    move-object v8, v15

    move v15, v9

    move/from16 v9, v16

    move-object v15, v10

    move/from16 v10, v17

    move/from16 v17, v11

    move-object v11, v12

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 168
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->EXTERNAL_MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 169
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL:Ljava/util/List;

    const/4 v5, 0x2

    .line 170
    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 171
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v5, [I

    fill-array-data v7, :array_3e

    new-array v8, v5, [I

    fill-array-data v8, :array_3f

    const v9, 0x7f120339

    const v10, 0x7f12046d

    move-object v2, v15

    move/from16 v5, v18

    move-object v6, v0

    move-object/from16 v11, v30

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 172
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DTFE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v11, v42

    const/4 v3, 0x2

    invoke-static {v15, v2, v14, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 173
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ROI_WEIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 174
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    new-array v5, v13, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 175
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    move/from16 v5, v17

    .line 176
    invoke-static {v15, v2, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 177
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v10, v39

    invoke-static {v15, v2, v10, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 178
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 179
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_LOCATION:Landroid/location/Location;

    invoke-static {v15, v2, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 180
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 181
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ADDRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v9, v41

    invoke-static {v15, v2, v9, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 182
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AF_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v9, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 183
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AWB_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v9, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 184
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LENS_SHADING_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v9, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 185
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v14, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 186
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v5, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 187
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 188
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING_VALUES:Ljava/util/List;

    .line 189
    invoke-static {v15, v2, v4, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 190
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 191
    new-instance v6, Lcom/motorola/camera/settings/Setting;

    const/4 v7, 0x3

    invoke-direct {v6, v4, v13, v7, v7}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    move-object/from16 v8, v40

    .line 192
    iput-object v8, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 193
    invoke-virtual {v15, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 195
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 196
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v7, v30

    invoke-static {v15, v2, v13, v3, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 197
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_PREVIOUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 198
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 199
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v5, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 200
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SHOW_ALL_SIZES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 201
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    const/16 v2, 0xd

    new-array v6, v2, [I

    fill-array-data v6, :array_40

    new-array v5, v2, [I

    fill-array-data v5, :array_41

    const v16, 0x7f120317

    const v17, 0x7f120317

    const/16 v19, 0x0

    move-object v2, v15

    move-object/from16 v20, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v29

    move-object/from16 v7, v18

    move-object/from16 v43, v8

    move-object/from16 v8, v20

    move-object/from16 v44, v9

    move/from16 v9, v16

    move-object/from16 v45, v10

    move/from16 v10, v17

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v11, v30

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 202
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v11, 0x1

    move-object/from16 v10, v45

    invoke-static {v15, v2, v10, v11, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 203
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-static {v15, v2, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 204
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_FRNT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 205
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_BACK_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 206
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 207
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const v5, 0x7f120450

    .line 208
    new-instance v6, Lcom/motorola/camera/settings/Setting;

    const/4 v7, 0x3

    invoke-direct {v6, v4, v3, v7, v11}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 209
    iput v5, v6, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 210
    iput-object v12, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 211
    invoke-virtual {v15, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION_PRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 213
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ALWAYS_AWARE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AA_OCR_VALUES:Ljava/util/List;

    const/4 v5, 0x2

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 214
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v5, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 215
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MEMORY_STATS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v5, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 216
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v5, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 217
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CAPTURE_RESULT_KEYS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_CAPTURE_RESULT_KEYS:[Ljava/lang/String;

    invoke-static {v15, v2, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 218
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_0_3:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v5, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 219
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_4_7:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v5, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 220
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_PREVIEW_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v5, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 221
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RINGER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->RINGER_MODE_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 222
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_UI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v5, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 223
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-direct {v3}, Lcom/motorola/camera/settings/CaptureIntent;-><init>()V

    invoke-static {v15, v2, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 224
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACING_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 225
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v15, v2, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 226
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v15, v2, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 227
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {v15, v2, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 228
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT_SLV:Landroid/graphics/Rect;

    invoke-static {v15, v2, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 229
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_BRACKET:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v10, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 230
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SCREEN_BRIGHTNESS_BUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 231
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 232
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x3

    .line 233
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 234
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW_VALUES:Ljava/util/List;

    .line 235
    new-instance v7, Lcom/motorola/camera/settings/Setting;

    invoke-direct {v7, v5, v4, v3, v11}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v6, :cond_2

    .line 236
    invoke-virtual {v7, v6}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v3, v19

    .line 237
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 238
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v9, v43

    .line 239
    iput-object v9, v7, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 240
    invoke-virtual {v15, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getReprocEnabled()Z

    move-result v2

    .line 242
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->REPROC_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v15, v3, v2, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 243
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_MFNR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v4, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 244
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_QC_MFNR_SINGLE_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 245
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QC_MFNR_BURST_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 246
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getMcfEnabled()Z

    move-result v2

    .line 247
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v15, v3, v2, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 248
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 249
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 250
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 251
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 252
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 253
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 254
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 255
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 256
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 257
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK3:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 258
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 259
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 260
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 261
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 262
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 263
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "0"

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 264
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 265
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DISABLE_ZSL_STREAMING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 266
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_SR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 267
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v11, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 268
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v11, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 269
    invoke-static {}, Lcom/motorola/camera/AppFeatures;->getInstance()Lcom/motorola/camera/AppFeatures;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->MCF_SN_TRIGGER:Lcom/motorola/camera/AppFeatures$Feature;

    .line 270
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 271
    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 272
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_TRIGGER:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 273
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    .line 274
    invoke-static {v15, v3, v2, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 275
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_STORE_ALL_JPEGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 276
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ACTIVITY_TIMEOUT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 277
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RENDER_PREVIEW_CONTINUOUSLY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 278
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MS_AVG_CAPTURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x14d

    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    .line 280
    invoke-static {v15, v2, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 281
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 282
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 283
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_FEATURE_LIMITED_SHOW_TOAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v11, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 284
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v11, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 285
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 286
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->OIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v5, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 287
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 288
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_TO_XMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 289
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->JPEG_QUALITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x5f

    .line 290
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 291
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 292
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_PREVIEW_ON_SHUTTER_UP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 293
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 294
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    .line 295
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 296
    new-instance v6, Lcom/motorola/camera/settings/Setting;

    invoke-direct {v6, v4, v3, v5, v11}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    const v3, 0x7f12044f

    .line 297
    iput v3, v6, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 298
    iput-object v12, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 299
    invoke-virtual {v15, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v8, v44

    invoke-static {v15, v2, v8, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 301
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 302
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->shouldFaceBeautyDefaultAuto()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_4

    :cond_3
    move/from16 v2, v19

    .line 303
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VALUES:Ljava/util/List;

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_42

    new-array v5, v2, [I

    fill-array-data v5, :array_43

    const v18, 0x7f12031d

    const v20, 0x7f12043a

    const/16 v21, 0x5

    move-object v2, v15

    move-object/from16 v22, v5

    move/from16 v5, v21

    move-object/from16 v46, v8

    move-object/from16 v8, v22

    move-object/from16 v47, v9

    move/from16 v9, v18

    move-object/from16 v37, v10

    move/from16 v10, v20

    move-object/from16 v18, v1

    move v1, v11

    move-object/from16 v11, v30

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 304
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 305
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 306
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_VALUES:Ljava/util/List;

    .line 307
    new-instance v6, Lcom/motorola/camera/settings/Setting;

    const/4 v7, 0x5

    invoke-direct {v6, v4, v3, v7, v1}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v5, :cond_4

    .line 308
    invoke-virtual {v6, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v3, v19

    .line 309
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 310
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v11, v30

    .line 311
    iput-object v11, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 312
    invoke-virtual {v15, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CUTOUT_DEFAULT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 314
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 315
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x0

    invoke-static {v15, v2, v9, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 316
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_STATES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 317
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 318
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 319
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v15, v2, v3, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 320
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FOCAL_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 321
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v4, [I

    fill-array-data v7, :array_44

    const/4 v10, 0x2

    move-object v2, v15

    move-object/from16 v4, v37

    move v5, v10

    move-object v6, v0

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 322
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->COLOR_SEGMENTATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_45

    move-object v2, v15

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 323
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 324
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION_ALGO_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 325
    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 326
    new-instance v5, Lcom/motorola/camera/settings/Setting;

    move-object/from16 v10, v37

    invoke-direct {v5, v4, v10, v1, v1}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 327
    iput-object v12, v5, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 328
    invoke-virtual {v15, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION_LAST_TIME_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 330
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 331
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 332
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v9, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 333
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 334
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_SCENE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 335
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 336
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_LOW_LIGHT_SELFIE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 337
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_IMAGE_STABILIZATION_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 338
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_CUD_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 339
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 341
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_VALUES:Ljava/util/List;

    const v6, 0x7f120454

    .line 342
    new-instance v7, Lcom/motorola/camera/settings/Setting;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v3, v8, v1}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v5, :cond_5

    .line 343
    invoke-virtual {v7, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v3, v19

    .line 344
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 345
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 346
    :cond_5
    iput v6, v7, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 347
    iput-object v11, v7, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 348
    invoke-virtual {v15, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_KELVIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x8fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 350
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 351
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 352
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ISO_ALLOW_VALUES:Ljava/util/List;

    const/16 v7, 0x9

    new-array v7, v7, [I

    .line 353
    fill-array-data v7, :array_46

    .line 354
    new-instance v8, Lcom/motorola/camera/settings/Setting;

    invoke-direct {v8, v5, v3, v4, v1}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v6, :cond_6

    .line 355
    invoke-virtual {v8, v6}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v3, v19

    .line 356
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 357
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 358
    aget v5, v7, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 359
    iget-object v9, v8, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_6
    const v3, 0x7f120451

    .line 360
    iput v3, v8, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 361
    iput-object v11, v8, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 362
    invoke-virtual {v15, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 364
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 365
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME_VALUES:Ljava/util/List;

    const/16 v6, 0x22

    new-array v6, v6, [I

    .line 366
    fill-array-data v6, :array_47

    .line 367
    new-instance v7, Lcom/motorola/camera/settings/Setting;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v3, v8, v1}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v5, :cond_7

    .line 368
    invoke-virtual {v7, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v3, v19

    .line 369
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 370
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 371
    aget v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 372
    iget-object v9, v7, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v9, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_7
    const v3, 0x7f120453

    .line 373
    iput v3, v7, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 374
    iput-object v11, v7, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 375
    invoke-virtual {v15, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->NATIVE_MAX_EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 377
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    .line 378
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 379
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HISTOGRAM_STYLE_RGB:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v4, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 380
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_UI_CONTROL_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->UI_MODE_VALUES:Ljava/util/List;

    const-string v4, "mode2"

    invoke-static {v15, v2, v4, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 381
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE_VALUES:Ljava/util/List;

    const-string v4, "Auto"

    invoke-static {v15, v2, v4, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 382
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SENSOR_MODE_VALUES:Ljava/util/List;

    const-string v4, "GyroScope"

    invoke-static {v15, v2, v4, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 383
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v4, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 384
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_PROJECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PROJECTION_MODE_VALUES:Ljava/util/List;

    const-string v4, "Equirectangular"

    invoke-static {v15, v2, v4, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 385
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_MOTION_DETECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOTION_DETECTION_MODE_VALUES:Ljava/util/List;

    const-string v4, "HighQuality"

    invoke-static {v15, v2, v4, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 386
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 387
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE_VALUES:Ljava/util/List;

    const-string v4, "REPEATING_REQUEST"

    invoke-static {v15, v2, v4, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 388
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_ROUND_END:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v1, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 389
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_MAKE_360_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v1, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 390
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SAVE_OUTPUT_BY_ENGINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v1, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 391
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v1, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 392
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_GOAL_ANGLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->GOAL_ANGLE_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v1, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 393
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_ASPECT_RATION_GAIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v3, 0x3f88f5c3    # 1.07f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_GAIN_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v1, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 394
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 395
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 396
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v10, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 397
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_ANTI_FLICKER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 398
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v13, v16

    .line 399
    invoke-static {v15, v2, v4, v1, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 400
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_EX_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 401
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_SUPPORT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 402
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 403
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 404
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SAVE_DEPTH_MAP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 405
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SUPPORT_ALL_SIZES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 406
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 407
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 408
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 409
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING_VALUES:Ljava/util/List;

    const/4 v6, 0x3

    invoke-static {v15, v2, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 410
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_STOP_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 411
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 412
    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 413
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSIONS:Ljava/util/List;

    invoke-static {v15, v2, v3, v1, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 414
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v1, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 415
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_48

    new-array v8, v2, [I

    fill-array-data v8, :array_49

    const v9, 0x7f120313

    const v16, 0x7f120449

    const/4 v5, 0x4

    move-object v2, v15

    move-object/from16 v6, v18

    move-object v1, v10

    move/from16 v10, v16

    move-object/from16 v16, v11

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 416
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v4, 0xfa0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS_VALUES:Ljava/util/List;

    const/4 v2, 0x7

    new-array v7, v2, [I

    fill-array-data v7, :array_4a

    const/4 v5, 0x2

    move-object v2, v15

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 417
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 418
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 419
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MLRN_GROUND_TRUTHS_VALUES:Ljava/util/List;

    .line 420
    new-instance v6, Lcom/motorola/camera/settings/Setting;

    move-object/from16 v11, v46

    const/4 v7, 0x1

    invoke-direct {v6, v4, v11, v3, v7}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v5, :cond_8

    .line 421
    invoke-virtual {v6, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v3, v19

    .line 422
    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 423
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    move-object/from16 v3, v47

    .line 424
    iput-object v3, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 425
    invoke-virtual {v15, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_INCEPTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 427
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SSDMOBILENET:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 428
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_HANDSSSD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 429
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 430
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_GESTURE_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 431
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 432
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 433
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 434
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 435
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 436
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_EYE_CONTOUR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 437
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-static {v15, v2, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 438
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 439
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 440
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 441
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMATS:Ljava/util/List;

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_4b

    new-array v8, v2, [I

    fill-array-data v8, :array_4c

    const v9, 0x7f120322

    const/4 v10, -0x1

    const/4 v5, 0x2

    move-object v2, v15

    move-object/from16 v18, v13

    move-object v13, v11

    move-object/from16 v11, v16

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 442
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DNG_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 443
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VOYAGER_SHOW_REAR_CAMERA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 444
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VOYAGER_CLI_DISPLAY_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 445
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 446
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_AUTO_CAPTURE_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 447
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_GROUPSHOT_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 448
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 449
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FOOD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 450
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 451
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 452
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 453
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 454
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_HOLIDAY_LIGHTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 455
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_SUNSET_SUNRISE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 456
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MOON:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 457
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FIREWORKS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 458
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 459
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TEXT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 460
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_BLUESKY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 461
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FLOWER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 462
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_GREENERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 463
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 464
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 465
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 466
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 467
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_GROUPSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 468
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 469
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_VALUES:Ljava/util/List;

    const-string v5, "AUTO"

    const/4 v6, 0x1

    invoke-static {v15, v2, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 470
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 471
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 472
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 473
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_EYE_GLASSES_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AI_EYE_GLASSES_BESTSHOT_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 474
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 475
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v3, [I

    fill-array-data v7, :array_4d

    const/4 v9, 0x2

    move-object v2, v15

    move-object v3, v4

    move-object v4, v14

    move v5, v9

    move-object v6, v0

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 476
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_REDUCTION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_4e

    move-object v2, v15

    move-object v4, v1

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 477
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_4f

    move-object v2, v15

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 478
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 479
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_COUNTRY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 480
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_SKU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 481
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 482
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "7"

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 483
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUMP_CAPTURE_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 484
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUMP_FACE_DETECT_INFO_PER_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 485
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-static {v15, v2, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 486
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SEQ_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 487
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    const/4 v5, 0x1

    invoke-static {v15, v2, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 488
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 489
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMATS:Ljava/util/List;

    .line 490
    invoke-static {v15, v2, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 491
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_LAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 492
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 493
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 494
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PRO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 495
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PLUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x3

    invoke-static {v15, v2, v1, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 496
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_FORCE_SHOW_HDR_ON:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 497
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_SINGLE_SESSION_REMOSAIC_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 498
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 499
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW_MAX_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 500
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CACHE_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 501
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 502
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_DEF_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 503
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CACHE_SHORTCUT_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 504
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG_CACHE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 505
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_IGNORE_SHOT_CONDITIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 506
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_FOUR_STREAMS_QCFA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 507
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LIMIT_SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 508
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 509
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->IGNORE_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 510
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DISABLE_BG_SERVICE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 511
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v15, v2, v1, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 512
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 513
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_HDR_PLUS_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 514
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 515
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 516
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 517
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 518
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 519
    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 520
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 521
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 522
    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 523
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 524
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 525
    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 526
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 527
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 528
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 529
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 530
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 531
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 532
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 533
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 534
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 535
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 536
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 537
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 538
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 539
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 540
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 541
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 542
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 543
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 544
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BACK_KNIFE_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 545
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 546
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 547
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELFIE_ANIMATION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 548
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_ZOOM_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 549
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SCAN_SLIDE_ROW_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 550
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 551
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MIGRATE_CAMERA_ID_TO_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v14, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 552
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TIMEOUT_3A_FRAMES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 553
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 554
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_LAST_AVAILABLE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 555
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 556
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 557
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 558
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MTK_SMVR_MODE_AVAILABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 559
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 560
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SUPER_SLOW_MOTION_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v0, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 561
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MTK_QUICK_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v0, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 562
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LAST_DEBUG_UI_SETTING_SEARCH_QUERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v0, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 563
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "Original"

    invoke-static {v15, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 564
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v0, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 565
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_USE_BLACK_SURFACE_BACKGROUND:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v0, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 566
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_FOLDABLE_SPLIT_SCREEN_DEV_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v0, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 567
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GLOBAL_SYSTEM_SETTING_TRANSITION_ANIMATION_SCALE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v15, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 568
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_MANUAL_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v0, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 569
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v0, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 570
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "getSettingsMap dur:"

    .line 571
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v15

    :array_0
    .array-data 4
        0x7f12031f
        0x7f120321
        0x7f120342
        0x7f120320
    .end array-data

    :array_1
    .array-data 4
        0x7f1204c8
        0x7f1204cb
        0x7f1204cc
        0x7f1204c7
    .end array-data

    :array_2
    .array-data 4
        0x7f080193
        0x7f080195
        0x7f080198
        0x7f080194
    .end array-data

    :array_3
    .array-data 4
        0x7f12031f
        0x7f120342
        0x7f120341
    .end array-data

    :array_4
    .array-data 4
        0x7f1204c8
        0x7f1204cb
        0x7f1204c7
    .end array-data

    :array_5
    .array-data 4
        0x7f080196
        0x7f080198
        0x7f080197
    .end array-data

    :array_6
    .array-data 4
        0x7f12031c
        0x7f12031b
    .end array-data

    :array_7
    .array-data 4
        0x7f080163
        0x7f080162
    .end array-data

    :array_8
    .array-data 4
        0x7f120350
        0x7f120355
        0x7f120354
        0x7f120353
        0x7f120352
    .end array-data

    :array_9
    .array-data 4
        0x7f1204ca
        0x7f120355
        0x7f120354
        0x7f1204cd
        0x7f1204c9
    .end array-data

    :array_a
    .array-data 4
        0x7f08014c
        0x7f08014e
        0x7f08014e
        0x7f08014e
        0x7f08014d
    .end array-data

    :array_b
    .array-data 4
        0x7f120350
        0x7f120355
        0x7f120354
        0x7f120353
        0x7f120352
    .end array-data

    :array_c
    .array-data 4
        0x7f1204ca
        0x7f1204cd
        0x7f1204cd
        0x7f1204cd
        0x7f1204c9
    .end array-data

    :array_d
    .array-data 4
        0x7f08014c
        0x7f08014e
        0x7f08014e
        0x7f08014e
        0x7f08014d
    .end array-data

    :array_e
    .array-data 4
        0x7f120350
        0x7f120355
        0x7f120354
        0x7f120353
        0x7f120352
    .end array-data

    :array_f
    .array-data 4
        0x7f1204ca
        0x7f1204cd
        0x7f1204cd
        0x7f1204cd
        0x7f1204c9
    .end array-data

    :array_10
    .array-data 4
        0x7f08014c
        0x7f08014e
        0x7f08014e
        0x7f08014e
        0x7f08014d
    .end array-data

    :array_11
    .array-data 4
        0x7f120353
        0x7f120352
    .end array-data

    :array_12
    .array-data 4
        0x7f1204cd
        0x7f1204c9
    .end array-data

    :array_13
    .array-data 4
        0x7f08014e
        0x7f08014d
    .end array-data

    :array_14
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_15
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_16
    .array-data 4
        0x7f120210
        0x7f120211
        0x7f120212
    .end array-data

    :array_17
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_18
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_19
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_1a
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_1b
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_1c
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_1d
    .array-data 4
        0x7f12032f
        0x7f12032e
    .end array-data

    :array_1e
    .array-data 4
        0x7f0801ff
        0x7f0801fe
    .end array-data

    :array_1f
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_20
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_21
    .array-data 4
        0x7f120319
        0x7f120318
    .end array-data

    :array_22
    .array-data 4
        0x7f120319
        0x7f120318
    .end array-data

    :array_23
    .array-data 4
        0x7f080165
        0x7f080164
    .end array-data

    :array_24
    .array-data 4
        0x7f120319
        0x7f120318
    .end array-data

    :array_25
    .array-data 4
        0x7f120319
        0x7f120318
    .end array-data

    :array_26
    .array-data 4
        0x7f0801a5
        0x7f0801a4
    .end array-data

    :array_27
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_28
    .array-data 4
        0x7f120404
        0x7f120403
    .end array-data

    :array_29
    .array-data 4
        0x7f08021d
        0x7f08021d
    .end array-data

    :array_2a
    .array-data 4
        0x7f12034f
        0x7f12034e
    .end array-data

    :array_2b
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_2c
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_2d
    .array-data 4
        0x7f12033e
        0x7f12033d
        0x7f12033f
    .end array-data

    :array_2e
    .array-data 4
        0x7f080222
        0x7f080221
        0x7f080224
    .end array-data

    :array_2f
    .array-data 4
        0x7f120369
        0x7f120373
        0x7f12036a
        0x7f120375
        0x7f12036d
        0x7f12036f
        0x7f12036c
        0x7f12036b
        0x7f120364
        0x7f120347
        0x7f120367
        0x7f120367
        0x7f120365
        0x7f120372
        0x7f12036b
        0x7f12035b
        0x7f120376
        0x7f12035a
        0x7f120368
        0x7f12035e
        0x7f120363
        0x7f120368
        0x7f120362
        0x7f120361
        0x7f120374
        0x7f120363
        0x7f120371
        0x7f120360
        0x7f12036e
        0x7f12035f
        0x7f120373
    .end array-data

    :array_30
    .array-data 4
        0x7f0801cc
        0x7f0801da
        0x7f0801cb
        0x7f0801c7
        0x7f0801d8
        0x7f0801d7
        0x7f0801d0
        0x7f0801ce
        0x7f0801c3
        0x7f0801ca
        0x7f0801c1
        0x7f0801c1
        0x7f0801db
        0x7f0801d9
        0x7f0801ce
        0x7f0801c2
        0x7f0801db
        0x7f08007b
        0x7f0801ca
        0x7f0801c4
        0x7f0801d5
        0x7f0801ca
        -0x1
        0x7f0801ce
        0x7f0801cf
        0x7f0801d5
        0x7f0802cd
        0x7f0801c6
        0x7f0801d6
        0x7f0801c5
        0x7f0801da
    .end array-data

    :array_31
    .array-data 4
        0x7f120243
        0x7f120242
    .end array-data

    :array_32
    .array-data 4
        0x7f1202e3
        0x7f1202e0
        0x7f1202e1
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e0
        0x7f1202e0
        0x7f1202e1
    .end array-data

    :array_33
    .array-data 4
        0x7f0801f1
        0x7f0801f2
        0x7f0801f4
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f3
        0x7f0801f3
        0x7f0801f4
    .end array-data

    :array_34
    .array-data 4
        0x7f120328
        0x7f12032a
        0x7f12032c
        0x7f120327
        0x7f120329
        0x7f12032b
        0x7f12032d
    .end array-data

    :array_35
    .array-data 4
        0x7f08019d
        0x7f08019f
        0x7f0801a1
        0x7f08019c
        0x7f08019e
        0x7f0801a0
        0x7f0801a2
    .end array-data

    :array_36
    .array-data 4
        0x7f1202e3
        0x7f1202e0
        0x7f1202e1
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e0
        0x7f1202e0
        0x7f1202e1
    .end array-data

    :array_37
    .array-data 4
        0x7f0801f1
        0x7f0801f2
        0x7f0801f4
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f3
        0x7f0801f3
        0x7f0801f4
    .end array-data

    :array_38
    .array-data 4
        0x7f120328
        0x7f12032a
        0x7f12032c
        0x7f120327
        0x7f120329
        0x7f12032b
        0x7f12032d
    .end array-data

    :array_39
    .array-data 4
        0x7f08019d
        0x7f08019f
        0x7f0801a1
        0x7f08019c
        0x7f08019e
        0x7f0801a0
        0x7f0801a2
    .end array-data

    :array_3a
    .array-data 4
        0x7f12033b
        0x7f12033a
    .end array-data

    :array_3b
    .array-data 4
        0x7f08021b
        0x7f08021a
    .end array-data

    :array_3c
    .array-data 4
        0x7f120356
        0x7f120348
        0x7f120359
        0x7f120358
    .end array-data

    :array_3d
    .array-data 4
        0x7f0801c0
        0x7f0801be
        0x7f0801c0
        0x7f0801bf
    .end array-data

    :array_3e
    .array-data 4
        0x7f12033b
        0x7f12033a
    .end array-data

    :array_3f
    .array-data 4
        0x7f08021b
        0x7f08021a
    .end array-data

    :array_40
    .array-data 4
        0x7f1202e3
        0x7f1202e0
        0x7f1202e1
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e2
        0x7f1202e0
        0x7f1202e0
        0x7f1202e1
    .end array-data

    :array_41
    .array-data 4
        0x7f0801f1
        0x7f0801f2
        0x7f0801f4
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f5
        0x7f0801f3
        0x7f0801f3
        0x7f0801f4
    .end array-data

    :array_42
    .array-data 4
        0x7f120349
        0x7f12034a
        0x7f12034b
    .end array-data

    :array_43
    .array-data 4
        0x7f080170
        0x7f080172
        0x7f080171
    .end array-data

    :array_44
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_45
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_46
    .array-data 4
        0x7f1202f0
        0x7f120310
        0x7f120311
        0x7f12030b
        0x7f12030d
        0x7f12030f
        0x7f120312
        0x7f12030c
        0x7f12030e
    .end array-data

    :array_47
    .array-data 4
        0x7f1202f0
        0x7f1203e9
        0x7f1203e3
        0x7f1203e0
        0x7f1203dc
        0x7f1203d7
        0x7f1203d4
        0x7f1203ea
        0x7f1203e6
        0x7f1203e1
        0x7f1203dd
        0x7f1203d8
        0x7f1203d5
        0x7f1203ec
        0x7f1203e8
        0x7f1203e4
        0x7f1203df
        0x7f1203db
        0x7f1203d6
        0x7f1203d3
        0x7f1203eb
        0x7f1203e7
        0x7f1203e2
        0x7f1203de
        0x7f1203da
        0x7f1203d2
        0x7f1203ed
        0x7f1203ef
        0x7f1203f0
        0x7f1203f1
        0x7f1203f2
        0x7f1203d0
        0x7f1203d1
        0x7f1203ee
    .end array-data

    :array_48
    .array-data 4
        0x7f120314
        0x7f120316
        0x7f120315
    .end array-data

    :array_49
    .array-data 4
        0x7f080150
        0x7f080152
        0x7f080151
    .end array-data

    :array_4a
    .array-data 4
        0x7f120275
        0x7f120276
        0x7f120277
        0x7f120278
        0x7f120279
        0x7f12027a
        0x7f120274
    .end array-data

    :array_4b
    .array-data 4
        0x7f120323
        0x7f120325
        0x7f120324
    .end array-data

    :array_4c
    .array-data 4
        0x7f080199
        0x7f08019a
        0x7f08019b
    .end array-data

    :array_4d
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_4e
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data

    :array_4f
    .array-data 4
        0x7f12037b
        0x7f12034c
    .end array-data
.end method
