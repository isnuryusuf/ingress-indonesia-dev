.class final Lcom/google/a/a/bd;
.super Lcom/google/a/a/bh;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/a/a/bc;


# direct methods
.method constructor <init>(Lcom/google/a/a/bc;Lcom/google/a/a/bb;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/a/a/bd;->a:Lcom/google/a/a/bc;

    invoke-direct {p0, p2, p3}, Lcom/google/a/a/bh;-><init>(Lcom/google/a/a/bb;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/a/a/bd;->a:Lcom/google/a/a/bc;

    iget-object v0, v0, Lcom/google/a/a/bc;->a:Lcom/google/a/a/f;

    iget-object v1, p0, Lcom/google/a/a/bd;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/a/a/f;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 155
    add-int/lit8 v0, p1, 0x1

    return v0
.end method
