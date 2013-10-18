.class final Lcom/google/a/d/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/google/a/d/af;


# direct methods
.method public strictfp constructor <init>(ILcom/google/a/d/af;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/google/a/d/ah;->a:I

    .line 116
    iput-object p2, p0, Lcom/google/a/d/ah;->b:Lcom/google/a/d/af;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/google/a/d/ah;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    iget v0, p0, Lcom/google/a/d/ah;->a:I

    return v0
.end method

.method static synthetic b(Lcom/google/a/d/ah;)Lcom/google/a/d/af;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/a/d/ah;->b:Lcom/google/a/d/af;

    return-object v0
.end method
