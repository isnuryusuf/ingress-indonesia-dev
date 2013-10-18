.class final Lcom/nianticproject/ingress/n/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/nianticproject/ingress/n/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nianticproject/ingress/n/ab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nianticproject/ingress/n/z;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/nianticproject/ingress/n/z;->b:Lcom/nianticproject/ingress/n/ab;

    .line 33
    return-void
.end method

.method private varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/n/z;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/n/ae;)Landroid/support/v4/app/Fragment;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const v4, 0x7f090036

    const/4 v3, 0x0

    .line 46
    sget-object v1, Lcom/nianticproject/ingress/n/aa;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/n/ae;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    invoke-static {v0}, Lcom/nianticproject/ingress/n/c;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_1
    const v0, 0x7f090079

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/n/c;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_2
    const v0, 0x7f090028

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/n/h;->a(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_3
    const v0, 0x7f09002b

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/nianticproject/ingress/n/h;->a(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_4
    const v0, 0x7f090029

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/n/m;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_5
    const v0, 0x7f09002a

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/n/m;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_6
    iget-object v0, p0, Lcom/nianticproject/ingress/n/z;->b:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/n/f;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_7
    iget-object v0, p0, Lcom/nianticproject/ingress/n/z;->b:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/n/d;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_8
    const v0, 0x7f090037

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_9
    const v0, 0x7f090038

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 85
    :pswitch_a
    invoke-static {}, Lcom/nianticproject/ingress/n/aj;->F()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 88
    :pswitch_b
    invoke-static {}, Lcom/nianticproject/ingress/n/a;->F()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 91
    :pswitch_c
    const v0, 0x7f090039

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 96
    :pswitch_d
    const v1, 0x7f09003a

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 103
    :pswitch_e
    iget-object v0, p0, Lcom/nianticproject/ingress/n/z;->b:Lcom/nianticproject/ingress/n/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/ab;->c()Lcom/nianticproject/ingress/shared/PregameStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/n/j;->a(Lcom/nianticproject/ingress/shared/PregameStatus;)Lcom/nianticproject/ingress/n/j;

    move-result-object v0

    goto/16 :goto_0

    .line 106
    :pswitch_f
    const v0, 0x7f09002f

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09003c

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 111
    :pswitch_10
    const v0, 0x7f090030

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 116
    :pswitch_11
    const v0, 0x7f09002e

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :pswitch_12
    const v0, 0x7f09002c

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :pswitch_13
    const v0, 0x7f09002d

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :pswitch_14
    const v0, 0x7f090031

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :pswitch_15
    invoke-static {}, Lcom/nianticproject/ingress/n/af;->F()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :pswitch_16
    const v0, 0x7f0900b6

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/n/m;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 142
    :pswitch_17
    invoke-static {}, Lcom/nianticproject/ingress/n/n;->F()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    :pswitch_18
    const v0, 0x7f0900b8

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/n/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/n/y;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
