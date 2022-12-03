.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$updateViewStub$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneDetectionPillComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateViewStub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$updateViewStub$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$updateViewStub$1;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$updateViewStub$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$updateViewStub$1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$updateViewStub$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v4, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 3
    invoke-static {v10}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v2

    const/16 v3, 0x7d0

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v8, 0x4

    if-eq v2, v8, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xbb8

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v8, v5

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v8, v2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v6, 0x2

    :goto_0
    move v8, v6

    move-object v3, v7

    goto :goto_1

    :cond_4
    move v8, v6

    :goto_1
    if-nez v3, :cond_5

    const/16 v2, 0xfa0

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 9
    :cond_5
    new-instance v15, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v5, 0x1

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v14, 0x0

    const/4 v6, 0x0

    const v12, 0x7f1204c1

    const/16 v16, 0x0

    move-object v2, v15

    move v3, v5

    move-object v5, v6

    move v6, v12

    move-object/from16 v12, v16

    invoke-direct/range {v2 .. v14}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 11
    sput-object v15, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v1, v15}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
