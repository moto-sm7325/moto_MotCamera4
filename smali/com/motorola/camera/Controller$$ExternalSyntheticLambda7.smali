.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Controller;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/Controller;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/Controller;

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3
    sget-object v3, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    const-string v3, "MeisheEffects"

    :try_start_0
    const-string v4, "luts"

    .line 4
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v4, :cond_5

    .line 5
    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 6
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "luts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "files"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 8
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v10, 0x400

    :try_start_3
    new-array v10, v10, [B

    .line 10
    :goto_1
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 11
    invoke-virtual {v9, v10, v2, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 12
    :cond_0
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_0
    move-exception v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v9, v1

    goto :goto_4

    :catch_1
    move-exception v9

    move-object v10, v9

    move-object v9, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v9, v1

    goto :goto_5

    :catch_2
    move-exception v8

    move-object v10, v8

    move-object v8, v1

    move-object v9, v8

    .line 13
    :goto_2
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to copy asset file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v8, :cond_1

    .line 14
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_1
    if-eqz v9, :cond_2

    .line 15
    :catch_4
    :goto_3
    :try_start_7
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_2
    move-exception p0

    :goto_4
    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_3

    .line 16
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_3
    if-eqz v9, :cond_4

    .line 17
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 18
    :catch_7
    :cond_4
    throw p0

    :catch_8
    move-exception p0

    const-string v0, "Failed to get asset file list."

    .line 19
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void

    .line 20
    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/Controller;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v3, v4}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 22
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    if-nez v3, :cond_6

    move-object v3, v1

    goto :goto_7

    :cond_6
    const v4, 0x7f12009c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v3, 0x7f1202c3

    .line 23
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->setTitle(I)V

    const v3, 0x7f1200f2

    .line 24
    new-instance v4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/Controller;)V

    .line 25
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->buttonNeutral:Landroid/widget/Button;

    if-nez p0, :cond_7

    goto :goto_9

    .line 26
    :cond_7
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    if-nez v5, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v4, v0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/DialogInterface$OnClickListener;Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;)V

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :goto_9
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 30
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
