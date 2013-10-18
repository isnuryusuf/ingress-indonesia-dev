.class public final Lcom/nianticproject/ingress/shared/plext/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/plext/d;

.field private final b:Lcom/nianticproject/ingress/shared/plext/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/c;->a:Lcom/nianticproject/ingress/shared/plext/d;

    .line 67
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/c;->b:Lcom/nianticproject/ingress/shared/plext/a;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/plext/d;Lcom/nianticproject/ingress/shared/plext/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/plext/c;->a:Lcom/nianticproject/ingress/shared/plext/d;

    .line 42
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/plext/c;->b:Lcom/nianticproject/ingress/shared/plext/a;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/plext/d;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/c;->a:Lcom/nianticproject/ingress/shared/plext/d;

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/plext/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/c;->b:Lcom/nianticproject/ingress/shared/plext/a;

    return-object v0
.end method

.method public final c()Lcom/nianticproject/ingress/shared/plext/a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/c;->b:Lcom/nianticproject/ingress/shared/plext/a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    instance-of v2, p1, Lcom/nianticproject/ingress/shared/plext/c;

    if-nez v2, :cond_2

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    check-cast p1, Lcom/nianticproject/ingress/shared/plext/c;

    .line 84
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/c;->a:Lcom/nianticproject/ingress/shared/plext/d;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/plext/c;->a:Lcom/nianticproject/ingress/shared/plext/d;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/c;->b:Lcom/nianticproject/ingress/shared/plext/a;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/plext/c;->b:Lcom/nianticproject/ingress/shared/plext/a;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/c;->a:Lcom/nianticproject/ingress/shared/plext/d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/c;->b:Lcom/nianticproject/ingress/shared/plext/a;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    const-string/jumbo v0, "(%s) \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/plext/c;->a:Lcom/nianticproject/ingress/shared/plext/d;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/plext/c;->b:Lcom/nianticproject/ingress/shared/plext/a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
