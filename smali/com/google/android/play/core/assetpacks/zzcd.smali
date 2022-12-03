.class public final Lcom/google/android/play/core/assetpacks/zzcd;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zzD:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzp;)V
    .locals 33

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lcom/google/android/play/core/assetpacks/zzu;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/google/android/play/core/assetpacks/zzu;-><init>(Lcom/google/android/play/core/assetpacks/zzp;)V

    new-instance v0, Landroidx/transition/ViewOverlayApi18;

    .line 2
    invoke-direct {v0, v11}, Landroidx/transition/ViewOverlayApi18;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 3
    sget-object v1, Lcom/google/android/play/core/internal/zzcq;->zza:Ljava/lang/Object;

    .line 4
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_0

    move-object v12, v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v12, v1

    .line 7
    :goto_0
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzs;

    const/4 v13, 0x1

    .line 8
    invoke-direct {v0, v11, v12, v13}, Lcom/google/android/play/core/assetpacks/zzs;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 9
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_1

    move-object v15, v0

    goto :goto_1

    .line 10
    :cond_1
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 11
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v15, v1

    .line 12
    :goto_1
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzcp;->zza:Lcom/google/android/play/core/assetpacks/zzcq;

    .line 13
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_2

    move-object v14, v0

    goto :goto_2

    .line 14
    :cond_2
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 15
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v14, v1

    .line 16
    :goto_2
    sget-object v0, Lcom/google/android/play/core/common/zzb;->zza:Lcom/google/android/play/core/common/zzc;

    .line 17
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_3

    move-object v1, v0

    goto :goto_3

    .line 18
    :cond_3
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 19
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 20
    :goto_3
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzec;

    .line 21
    invoke-direct {v0, v15, v12, v1}, Lcom/google/android/play/core/assetpacks/zzec;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 22
    instance-of v2, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_4

    goto :goto_4

    .line 23
    :cond_4
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 24
    invoke-direct {v2, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v0, v2

    .line 25
    :goto_4
    new-instance v2, Lcom/google/android/play/core/appupdate/zzg;

    .line 26
    invoke-direct {v2, v11, v14, v0, v13}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 27
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_5

    move-object v10, v2

    goto :goto_5

    .line 28
    :cond_5
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 29
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v10, v3

    .line 30
    :goto_5
    new-instance v2, Lcom/google/android/play/core/appupdate/zzt;

    .line 31
    invoke-direct {v2, v11, v13}, Lcom/google/android/play/core/appupdate/zzt;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 32
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_6

    move-object/from16 v16, v2

    goto :goto_6

    .line 33
    :cond_6
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 34
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v16, v3

    .line 35
    :goto_6
    new-instance v9, Lcom/google/android/play/core/internal/zzcp;

    invoke-direct {v9}, Lcom/google/android/play/core/internal/zzcp;-><init>()V

    sget-object v2, Lcom/google/android/play/core/assetpacks/zzq;->zza:Lcom/google/android/play/core/assetpacks/zzr;

    .line 36
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_7

    move-object v8, v2

    goto :goto_7

    .line 37
    :cond_7
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 38
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v8, v3

    .line 39
    :goto_7
    new-instance v2, Landroidx/constraintlayout/core/Cache;

    .line 40
    invoke-direct {v2, v15, v9, v14, v8}, Landroidx/constraintlayout/core/Cache;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 41
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_8

    move-object/from16 v28, v2

    goto :goto_8

    .line 42
    :cond_8
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 43
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v28, v3

    .line 44
    :goto_8
    new-instance v7, Lcom/google/android/play/core/internal/zzcp;

    invoke-direct {v7}, Lcom/google/android/play/core/internal/zzcp;-><init>()V

    new-instance v6, Lcom/google/android/play/core/assetpacks/zzcg;

    const/16 v17, 0x0

    move-object v2, v6

    move-object v3, v15

    move-object v4, v9

    move-object v5, v7

    move-object v13, v6

    move-object v6, v14

    move-object/from16 v29, v7

    move-object v7, v0

    move-object/from16 v30, v8

    move/from16 v8, v17

    .line 45
    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/assetpacks/zzcg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 46
    instance-of v2, v13, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_9

    move-object/from16 v20, v13

    goto :goto_9

    .line 47
    :cond_9
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 48
    invoke-direct {v2, v13}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v20, v2

    .line 49
    :goto_9
    new-instance v2, Lcom/google/android/play/core/appupdate/zzc;

    const/4 v13, 0x2

    .line 50
    invoke-direct {v2, v15, v13}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 51
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_a

    move-object/from16 v21, v2

    goto :goto_a

    .line 52
    :cond_a
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 53
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v21, v3

    .line 54
    :goto_a
    new-instance v2, Lcom/google/gson/FieldAttributes;

    .line 55
    invoke-direct {v2, v15}, Lcom/google/gson/FieldAttributes;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 56
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_b

    move-object/from16 v22, v2

    goto :goto_b

    .line 57
    :cond_b
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 58
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v22, v3

    .line 59
    :goto_b
    new-instance v8, Lcom/google/android/play/core/assetpacks/zzdp;

    const/16 v17, 0x1

    move-object v2, v8

    move-object v3, v15

    move-object v4, v9

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object v7, v14

    move-object v13, v8

    move-object v8, v1

    move-object/from16 v31, v12

    move-object v12, v9

    move-object v9, v0

    move-object/from16 v32, v10

    move/from16 v10, v17

    .line 60
    invoke-direct/range {v2 .. v10}, Lcom/google/android/play/core/assetpacks/zzdp;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 61
    instance-of v2, v13, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_c

    move-object/from16 v23, v13

    goto :goto_c

    .line 62
    :cond_c
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 63
    invoke-direct {v2, v13}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v23, v2

    .line 64
    :goto_c
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    .line 65
    invoke-direct {v2, v15, v12}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 66
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_d

    move-object/from16 v24, v2

    goto :goto_d

    .line 67
    :cond_d
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 68
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v24, v3

    .line 69
    :goto_d
    new-instance v9, Lcom/google/android/play/core/assetpacks/zzcg;

    const/4 v8, 0x1

    move-object v2, v9

    move-object v3, v15

    move-object v4, v12

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object v7, v14

    .line 70
    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/assetpacks/zzcg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 71
    instance-of v2, v9, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_e

    move-object/from16 v25, v9

    goto :goto_e

    .line 72
    :cond_e
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 73
    invoke-direct {v2, v9}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v25, v2

    .line 74
    :goto_e
    new-instance v2, Lcom/google/android/play/core/appupdate/zzc;

    const/4 v3, 0x1

    .line 75
    invoke-direct {v2, v12, v3}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 76
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_f

    move-object v5, v2

    goto :goto_f

    .line 77
    :cond_f
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 78
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v5, v3

    .line 79
    :goto_f
    new-instance v8, Lcom/google/android/play/core/assetpacks/zzc;

    const/4 v7, 0x1

    move-object v2, v8

    move-object/from16 v3, v28

    move-object v4, v15

    move-object v6, v1

    .line 80
    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 81
    instance-of v2, v8, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_10

    move-object/from16 v26, v8

    goto :goto_10

    .line 82
    :cond_10
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 83
    invoke-direct {v2, v8}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v26, v2

    .line 84
    :goto_10
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzbc;

    const/16 v27, 0x1

    move-object/from16 v17, v2

    move-object/from16 v18, v28

    move-object/from16 v19, v12

    .line 85
    invoke-direct/range {v17 .. v27}, Lcom/google/android/play/core/assetpacks/zzbc;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 86
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_11

    move-object v3, v2

    goto :goto_11

    .line 87
    :cond_11
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 88
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 89
    :goto_11
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzby;->zza:Lcom/google/android/play/core/assetpacks/zzbz;

    .line 90
    instance-of v4, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v4, :cond_12

    move-object/from16 v21, v2

    goto :goto_12

    .line 91
    :cond_12
    new-instance v4, Lcom/google/android/play/core/internal/zzcq;

    .line 92
    invoke-direct {v4, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v21, v4

    .line 93
    :goto_12
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzw;->zza:Lcom/google/android/play/core/assetpacks/zzx;

    .line 94
    instance-of v4, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v4, :cond_13

    move-object v8, v2

    goto :goto_13

    .line 95
    :cond_13
    new-instance v4, Lcom/google/android/play/core/internal/zzcq;

    .line 96
    invoke-direct {v4, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v8, v4

    .line 97
    :goto_13
    new-instance v13, Lcom/google/android/play/core/assetpacks/zzbc;

    const/4 v10, 0x0

    move-object/from16 v24, v0

    move-object v0, v13

    move-object/from16 v23, v1

    move-object v1, v11

    move-object/from16 v2, v28

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v6, v21

    move-object/from16 v7, v30

    move-object/from16 v9, v24

    .line 98
    invoke-direct/range {v0 .. v10}, Lcom/google/android/play/core/assetpacks/zzbc;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 99
    instance-of v0, v13, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_14

    goto :goto_14

    .line 100
    :cond_14
    new-instance v0, Lcom/google/android/play/core/internal/zzcq;

    .line 101
    invoke-direct {v0, v13}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v13, v0

    :goto_14
    move-object/from16 v9, v29

    .line 102
    iget-object v0, v9, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    if-nez v0, :cond_1d

    iput-object v13, v9, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    .line 103
    new-instance v10, Lcom/google/android/play/core/assetpacks/zzdp;

    const/4 v8, 0x0

    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v9

    move-object v3, v14

    move-object v4, v11

    move-object/from16 v5, v31

    move-object/from16 v6, v30

    move-object/from16 v7, v24

    .line 104
    invoke-direct/range {v0 .. v8}, Lcom/google/android/play/core/assetpacks/zzdp;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 105
    instance-of v0, v10, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_15

    goto :goto_15

    .line 106
    :cond_15
    new-instance v0, Lcom/google/android/play/core/internal/zzcq;

    .line 107
    invoke-direct {v0, v10}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v10, v0

    .line 108
    :goto_15
    new-instance v0, Lcom/google/android/play/core/appupdate/zzg;

    move-object/from16 v2, v32

    const/4 v1, 0x2

    .line 109
    invoke-direct {v0, v11, v2, v10, v1}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 110
    instance-of v2, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_16

    goto :goto_16

    .line 111
    :cond_16
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 112
    invoke-direct {v2, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v0, v2

    .line 113
    :goto_16
    iget-object v2, v12, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    if-nez v2, :cond_1c

    iput-object v0, v12, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    .line 114
    new-instance v0, Lcom/google/android/play/core/appupdate/zzt;

    .line 115
    invoke-direct {v0, v11, v1}, Lcom/google/android/play/core/appupdate/zzt;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 116
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_17

    move-object/from16 v18, v0

    goto :goto_17

    .line 117
    :cond_17
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 118
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v18, v1

    .line 119
    :goto_17
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzm;

    move-object v1, v14

    move-object v14, v0

    move-object v2, v15

    move-object/from16 v16, v12

    move-object/from16 v17, v9

    move-object/from16 v19, v28

    move-object/from16 v20, v1

    move-object/from16 v22, v30

    .line 120
    invoke-direct/range {v14 .. v24}, Lcom/google/android/play/core/assetpacks/zzm;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 121
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_18

    move-object v3, v0

    goto :goto_18

    .line 122
    :cond_18
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 123
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v3, v1

    .line 124
    :goto_18
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzs;

    const/4 v1, 0x0

    .line 125
    invoke-direct {v0, v3, v11, v1}, Lcom/google/android/play/core/assetpacks/zzs;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 126
    instance-of v0, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_19

    goto :goto_19

    .line 127
    :cond_19
    new-instance v0, Lcom/google/android/play/core/internal/zzcq;

    .line 128
    :goto_19
    new-instance v0, Lcom/google/android/play/core/appupdate/zzi;

    const/4 v1, 0x1

    .line 129
    invoke-direct {v0, v11, v1}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 130
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_1a

    move-object v4, v0

    goto :goto_1a

    .line 131
    :cond_1a
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 132
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v4, v1

    .line 133
    :goto_1a
    new-instance v6, Lcom/google/android/play/core/assetpacks/zzc;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v11

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 135
    instance-of v0, v6, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_1b

    goto :goto_1b

    .line 136
    :cond_1b
    new-instance v0, Lcom/google/android/play/core/internal/zzcq;

    .line 137
    invoke-direct {v0, v6}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v6, v0

    :goto_1b
    move-object/from16 v0, p0

    .line 138
    iput-object v6, v0, Lcom/google/android/play/core/assetpacks/zzcd;->zzD:Lcom/google/android/play/core/internal/zzcs;

    return-void

    .line 139
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 140
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
