.class public final Lcom/google/android/gms/internal/fc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/eq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/eq;
    .locals 34

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;)I

    move-result v32

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move/from16 v0, v32

    if-ge v2, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v33, 0xffff

    and-int v33, v33, v2

    packed-switch v33, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    sget-object v6, Lcom/google/android/gms/internal/eq$a;->a:Lcom/google/android/gms/internal/eu;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v6}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eq$a;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v6, v2

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v9

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_7
    sget-object v10, Lcom/google/android/gms/internal/eq$b;->a:Lcom/google/android/gms/internal/ev;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v10}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eq$b;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v10, v2

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    sget-object v13, Lcom/google/android/gms/internal/eq$c;->a:Lcom/google/android/gms/internal/ey;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13}, Lcom/google/android/gms/internal/b;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v15

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->c(Landroid/os/Parcel;I)Z

    move-result v16

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_f
    sget-object v18, Lcom/google/android/gms/internal/eq$d;->a:Lcom/google/android/gms/internal/ez;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eq$d;

    const/16 v18, 0xf

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v2

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->c(Landroid/os/Parcel;I)Z

    move-result v19

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_11
    sget-object v21, Lcom/google/android/gms/internal/eq$e;->a:Lcom/google/android/gms/internal/fa;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eq$e;

    const/16 v21, 0x13

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v2

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v23

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v22

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_15
    sget-object v25, Lcom/google/android/gms/internal/eq$h;->a:Lcom/google/android/gms/internal/fd;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/b;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_16
    sget-object v24, Lcom/google/android/gms/internal/eq$g;->a:Lcom/google/android/gms/internal/fb;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/b;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v27

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v26

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v29

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v28

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/b;->c(Landroid/os/Parcel;I)Z

    move-result v31

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1c
    sget-object v30, Lcom/google/android/gms/internal/eq$i;->a:Lcom/google/android/gms/internal/fe;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/b;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move/from16 v0, v32

    if-eq v2, v0, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Overread allowed size end="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/c;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/eq;

    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/internal/eq;-><init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/eq$a;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/eq$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;Lcom/google/android/gms/internal/eq$d;ZLjava/lang/String;Lcom/google/android/gms/internal/eq$e;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_15
        :pswitch_18
        :pswitch_17
        :pswitch_1a
        :pswitch_19
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/internal/eq;Landroid/os/Parcel;I)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->e()Ljava/util/Set;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->f()I

    move-result v2

    invoke-static {p1, v4, v2}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, v2, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->h()Lcom/google/android/gms/internal/eq$a;

    move-result-object v2

    invoke-static {p1, v5, v2, p2, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v6, v2, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v7, v2, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_4
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->k()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    :cond_5
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->l()Lcom/google/android/gms/internal/eq$b;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_6
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_7
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_8
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->o()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_9
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_a
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->q()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    :cond_b
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->r()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;IZ)V

    :cond_c
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_d
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->t()Lcom/google/android/gms/internal/eq$d;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_e
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->u()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;IZ)V

    :cond_f
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->w()Lcom/google/android/gms/internal/eq$e;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_10
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_11
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->y()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    :cond_12
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_13
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->A()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_14
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->z()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_15
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->C()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    :cond_16
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->B()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    :cond_17
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_18
    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_19
    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->G()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;IZ)V

    :cond_1a
    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eq;->F()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_1b
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/fc;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/eq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/eq;

    return-object v0
.end method
