.class public final Lcom/nianticproject/ingress/shared/PregameStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final action:Lcom/nianticproject/ingress/shared/y;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final dialogText:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final negativeUserAction:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final positiveUserAction:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->action:Lcom/nianticproject/ingress/shared/y;

    .line 265
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->dialogText:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->positiveUserAction:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    .line 267
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->negativeUserAction:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    .line 268
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/y;Ljava/lang/String;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/y;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->action:Lcom/nianticproject/ingress/shared/y;

    .line 240
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->dialogText:Ljava/lang/String;

    .line 241
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->positiveUserAction:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    .line 242
    iput-object p4, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->negativeUserAction:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    .line 243
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;
    .locals 3
    .parameter

    .prologue
    .line 280
    new-instance v0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    sget-object v1, Lcom/nianticproject/ingress/shared/z;->b:Lcom/nianticproject/ingress/shared/z;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/shared/z;Ljava/util/Map;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;
    .locals 4
    .parameter

    .prologue
    .line 289
    sget-object v0, Lcom/nianticproject/ingress/shared/x;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/ah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    new-instance v1, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    sget-object v2, Lcom/nianticproject/ingress/shared/z;->c:Lcom/nianticproject/ingress/shared/z;

    const-string/jumbo v3, "URI"

    invoke-static {v3, v0}, Lcom/google/a/c/dh;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dh;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/shared/z;Ljava/util/Map;)V

    return-object v1

    .line 291
    :pswitch_0
    const-string/jumbo v0, "https://nemesis.googleplex.com/static/Nemesis-Android-opt.apk"

    goto :goto_0

    .line 295
    :pswitch_1
    const-string/jumbo v0, "market://details?id=com.nianticproject.ingress"

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/y;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->action:Lcom/nianticproject/ingress/shared/y;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->dialogText:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->positiveUserAction:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    return-object v0
.end method

.method public final d()Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->negativeUserAction:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    const-string/jumbo v0, "ServerCommand: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/PregameStatus;->action:Lcom/nianticproject/ingress/shared/y;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
