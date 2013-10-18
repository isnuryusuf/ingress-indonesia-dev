.class final Lcom/google/a/d/x;
.super Lcom/google/a/d/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/a/d/w;


# direct methods
.method strictfp constructor <init>(Lcom/google/a/d/w;)V
    .locals 0
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/google/a/d/x;->a:Lcom/google/a/d/w;

    invoke-direct {p0}, Lcom/google/a/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final strictfp b(I)Lcom/google/a/d/y;
    .locals 1
    .parameter

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/a/d/x;->a:Lcom/google/a/d/w;

    invoke-virtual {v0, p1}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp c()I
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/a/d/x;->a:Lcom/google/a/d/w;

    invoke-static {v0}, Lcom/google/a/d/w;->a(Lcom/google/a/d/w;)I

    move-result v0

    return v0
.end method

.method public final strictfp c(I)Lcom/google/a/d/y;
    .locals 2
    .parameter

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/a/d/x;->a:Lcom/google/a/d/w;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/a/d/w;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    return-object v0
.end method
