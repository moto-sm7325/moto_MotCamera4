.class public Lcom/motorola/camera/settings/PersistAspectRatioBehavior;
.super Lcom/motorola/camera/settings/PersistBehavior;
.source "PersistAspectRatioBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/settings/PersistBehavior<",
        "Lcom/motorola/camera/PreviewSize$AspectRatio;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/settings/PersistBehavior;-><init>(I)V

    return-void
.end method


# virtual methods
.method public copyValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 2
    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void
.end method

.method public load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/PreviewSize$AspectRatio;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/Setting<",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ">;",
            "Lcom/motorola/camera/settings/CameraType;",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ")",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/PreviewSize;->ASPECT_RATIOS_3x4:Ljava/util/Collection;

    .line 6
    invoke-static {}, Lcom/motorola/camera/PreviewSize$AspectRatio;->values()[Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Ljava/lang/Float;Ljava/util/List;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public bridge synthetic load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p3, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/settings/PersistAspectRatioBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/PreviewSize$AspectRatio;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    return-object p0
.end method

.method public performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/Setting<",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ">;",
            "Lcom/motorola/camera/settings/CameraType;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/settings/PersistAspectRatioBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/PreviewSize$AspectRatio;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v0

    .line 3
    invoke-virtual {p1, p2}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    return-void
.end method

.method public performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;Lcom/motorola/camera/settings/CameraType;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    .line 5
    iget-object p1, p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
