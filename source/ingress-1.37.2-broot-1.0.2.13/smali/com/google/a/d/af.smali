.class final Lcom/google/a/d/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/a/d/i;

.field private b:Z

.field private c:I

.field private d:[Lcom/google/a/d/af;


# direct methods
.method strictfp constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/a/d/af;Lcom/google/a/d/i;)Lcom/google/a/d/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/a/d/af;->a:Lcom/google/a/d/i;

    return-object p1
.end method

.method static synthetic a(Lcom/google/a/d/af;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/a/d/af;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/google/a/d/af;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/google/a/d/af;->b:Z

    return p1
.end method

.method static synthetic a(Lcom/google/a/d/af;[Lcom/google/a/d/af;)[Lcom/google/a/d/af;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/a/d/af;->d:[Lcom/google/a/d/af;

    return-object p1
.end method

.method static synthetic b(Lcom/google/a/d/af;)Lcom/google/a/d/i;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/a/d/af;->a:Lcom/google/a/d/i;

    return-object v0
.end method

.method static synthetic c(Lcom/google/a/d/af;)I
    .locals 1
    .parameter

    .prologue
    .line 102
    iget v0, p0, Lcom/google/a/d/af;->c:I

    return v0
.end method

.method static synthetic d(Lcom/google/a/d/af;)[Lcom/google/a/d/af;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/a/d/af;->d:[Lcom/google/a/d/af;

    return-object v0
.end method

.method static synthetic e(Lcom/google/a/d/af;)I
    .locals 2
    .parameter

    .prologue
    .line 102
    iget v0, p0, Lcom/google/a/d/af;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/a/d/af;->c:I

    return v0
.end method
