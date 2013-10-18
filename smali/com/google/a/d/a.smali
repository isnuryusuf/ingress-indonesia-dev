.class public final Lcom/google/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/d/a;->b:Ljava/lang/Integer;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/d/a;->a:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/a/d/a;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/google/a/d/a;->a:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/d/a;->b:Ljava/lang/Integer;

    .line 63
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 52
    instance-of v0, p1, Lcom/google/a/d/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/a/d/a;

    iget v0, p1, Lcom/google/a/d/a;->a:I

    iget v1, p0, Lcom/google/a/d/a;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/a/d/a;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/a/d/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->b:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/a/d/a;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
