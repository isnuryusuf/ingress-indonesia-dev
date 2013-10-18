.class public Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/plext/a;


# instance fields
.field private final guid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final plain:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final team:Lcom/nianticproject/ingress/shared/ai;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->plain:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->guid:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    .line 94
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->plain:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->guid:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/shared/plext/c;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;)V

    .line 103
    new-instance v1, Lcom/nianticproject/ingress/shared/plext/c;

    sget-object v2, Lcom/nianticproject/ingress/shared/plext/d;->c:Lcom/nianticproject/ingress/shared/plext/d;

    invoke-direct {v1, v2, v0}, Lcom/nianticproject/ingress/shared/plext/c;-><init>(Lcom/nianticproject/ingress/shared/plext/d;Lcom/nianticproject/ingress/shared/plext/a;)V

    return-object v1
.end method

.method public static a(Lcom/nianticproject/ingress/shared/plext/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    sget-object v1, Lcom/nianticproject/ingress/shared/plext/e;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/plext/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    move-object p1, v0

    .line 217
    :goto_0
    :pswitch_0
    return-object p1

    .line 201
    :pswitch_1
    if-eqz p1, :cond_0

    const-string/jumbo v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 211
    :pswitch_2
    if-eqz p1, :cond_0

    const-string/jumbo v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/ai;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    instance-of v2, p1, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    if-nez v2, :cond_2

    move v0, v1

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    check-cast p1, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    .line 85
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->plain:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->plain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/shared/ai;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->guid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->plain:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->guid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string/jumbo v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->plain:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
