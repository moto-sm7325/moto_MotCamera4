.class public final Lcom/motorola/camera/cli/util/LidStateHelper;
.super Ljava/lang/Object;
.source "LidStateHelper.kt"


# direct methods
.method public static final getLidState(Landroid/content/Context;)I
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 2
    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget p0, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_ABSENT:I

    return p0

    :cond_0
    const-string v1, "lid_state"

    .line 5
    sget v2, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_ABSENT:I

    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotorolaSettingsGlobal"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method
