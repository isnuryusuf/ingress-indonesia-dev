.class public final Lcom/nianticproject/ingress/common/q/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/q/a/b;

.field private final b:Lcom/nianticproject/ingress/common/q/a/b;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    and-int/lit8 v0, p1, 0xf

    invoke-static {v0}, Lcom/nianticproject/ingress/common/q/a/c;->a(I)Lcom/nianticproject/ingress/common/q/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/a/c;->a:Lcom/nianticproject/ingress/common/q/a/b;

    .line 17
    ushr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lcom/nianticproject/ingress/common/q/a/c;->a(I)Lcom/nianticproject/ingress/common/q/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/a/c;->b:Lcom/nianticproject/ingress/common/q/a/b;

    .line 18
    return-void
.end method

.method private static a(I)Lcom/nianticproject/ingress/common/q/a/b;
    .locals 1
    .parameter

    .prologue
    .line 29
    and-int/lit8 v0, p0, 0xf

    packed-switch v0, :pswitch_data_0

    .line 49
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/b;->a:Lcom/nianticproject/ingress/common/q/a/b;

    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/b;->b:Lcom/nianticproject/ingress/common/q/a/b;

    goto :goto_0

    .line 35
    :pswitch_3
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/b;->c:Lcom/nianticproject/ingress/common/q/a/b;

    goto :goto_0

    .line 37
    :pswitch_4
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/b;->d:Lcom/nianticproject/ingress/common/q/a/b;

    goto :goto_0

    .line 39
    :pswitch_5
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/b;->e:Lcom/nianticproject/ingress/common/q/a/b;

    goto :goto_0

    .line 41
    :pswitch_6
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/b;->f:Lcom/nianticproject/ingress/common/q/a/b;

    goto :goto_0

    .line 43
    :pswitch_7
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/b;->g:Lcom/nianticproject/ingress/common/q/a/b;

    goto :goto_0

    .line 45
    :pswitch_8
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/b;->h:Lcom/nianticproject/ingress/common/q/a/b;

    goto :goto_0

    .line 47
    :pswitch_9
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/b;->i:Lcom/nianticproject/ingress/common/q/a/b;

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
