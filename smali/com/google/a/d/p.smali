.class public final Lcom/google/a/d/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/a/d/y;

.field private final b:Lcom/google/a/d/y;

.field private final c:Lcom/google/a/d/y;

.field private d:Lcom/google/a/d/y;

.field private e:I


# direct methods
.method public strictfp constructor <init>(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/a/d/p;->a:Lcom/google/a/d/y;

    .line 75
    iput-object p2, p0, Lcom/google/a/d/p;->b:Lcom/google/a/d/y;

    .line 76
    invoke-static {p1, p2}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/p;->c:Lcom/google/a/d/y;

    .line 77
    invoke-virtual {p0, p3}, Lcom/google/a/d/p;->a(Lcom/google/a/d/y;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final strictfp a(Lcom/google/a/d/y;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/a/d/p;->d:Lcom/google/a/d/y;

    .line 85
    iget-object v0, p0, Lcom/google/a/d/p;->a:Lcom/google/a/d/y;

    iget-object v1, p0, Lcom/google/a/d/p;->b:Lcom/google/a/d/y;

    iget-object v2, p0, Lcom/google/a/d/p;->c:Lcom/google/a/d/y;

    invoke-static {v0, v1, p1, v2}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/google/a/d/p;->e:I

    .line 86
    return-void
.end method

.method public final strictfp b(Lcom/google/a/d/y;)I
    .locals 4
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/a/d/p;->a:Lcom/google/a/d/y;

    iget-object v1, p0, Lcom/google/a/d/p;->b:Lcom/google/a/d/y;

    iget-object v2, p0, Lcom/google/a/d/p;->c:Lcom/google/a/d/y;

    invoke-static {v0, v1, p1, v2}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v1

    .line 109
    iget v0, p0, Lcom/google/a/d/p;->e:I

    neg-int v0, v0

    if-ne v1, v0, :cond_0

    if-nez v1, :cond_2

    .line 111
    :cond_0
    iget v0, p0, Lcom/google/a/d/p;->e:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 114
    const/4 v0, 0x0

    .line 122
    :goto_0
    iput-object p1, p0, Lcom/google/a/d/p;->d:Lcom/google/a/d/y;

    .line 123
    neg-int v1, v1

    iput v1, p0, Lcom/google/a/d/p;->e:I

    .line 124
    return v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/a/d/p;->d:Lcom/google/a/d/y;

    invoke-static {v0, p1}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    iget-object v2, p0, Lcom/google/a/d/p;->d:Lcom/google/a/d/y;

    iget-object v3, p0, Lcom/google/a/d/p;->b:Lcom/google/a/d/y;

    invoke-static {v2, p1, v3, v0}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v2

    neg-int v2, v2

    iget v3, p0, Lcom/google/a/d/p;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/a/d/p;->d:Lcom/google/a/d/y;

    iget-object v3, p0, Lcom/google/a/d/p;->a:Lcom/google/a/d/y;

    invoke-static {v2, p1, v3, v0}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v0

    iget v2, p0, Lcom/google/a/d/p;->e:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final strictfp c(Lcom/google/a/d/y;)Z
    .locals 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/a/d/p;->d:Lcom/google/a/d/y;

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/a/d/p;->b(Lcom/google/a/d/y;)I

    move-result v1

    .line 138
    if-gez v1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 141
    :cond_0
    if-lez v1, :cond_1

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/google/a/d/p;->a:Lcom/google/a/d/y;

    iget-object v2, p0, Lcom/google/a/d/p;->b:Lcom/google/a/d/y;

    invoke-static {v1, v2, v0, p1}, Lcom/google/a/d/o;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z

    move-result v0

    goto :goto_0
.end method
