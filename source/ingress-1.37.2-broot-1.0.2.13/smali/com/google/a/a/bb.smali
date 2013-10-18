.class public final Lcom/google/a/a/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/a/a/f;

.field private final b:Z

.field private final c:Lcom/google/a/a/bi;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/a/a/bi;)V
    .locals 3
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    sget-object v1, Lcom/google/a/a/f;->m:Lcom/google/a/a/f;

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/a/a/bb;-><init>(Lcom/google/a/a/bi;ZLcom/google/a/a/f;I)V

    .line 111
    return-void
.end method

.method private constructor <init>(Lcom/google/a/a/bi;ZLcom/google/a/a/f;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/a/a/bb;->c:Lcom/google/a/a/bi;

    .line 116
    iput-boolean p2, p0, Lcom/google/a/a/bb;->b:Z

    .line 117
    iput-object p3, p0, Lcom/google/a/a/bb;->a:Lcom/google/a/a/f;

    .line 118
    iput p4, p0, Lcom/google/a/a/bb;->d:I

    .line 119
    return-void
.end method

.method public static a(C)Lcom/google/a/a/bb;
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-static {p0}, Lcom/google/a/a/f;->a(C)Lcom/google/a/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/bb;->a(Lcom/google/a/a/f;)Lcom/google/a/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/a/a/f;)Lcom/google/a/a/bb;
    .locals 2
    .parameter

    .prologue
    .line 144
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/google/a/a/bb;

    new-instance v1, Lcom/google/a/a/bc;

    invoke-direct {v1, p0}, Lcom/google/a/a/bc;-><init>(Lcom/google/a/a/f;)V

    invoke-direct {v0, v1}, Lcom/google/a/a/bb;-><init>(Lcom/google/a/a/bi;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/a/a/bb;
    .locals 2
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "The separator may not be the empty string."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 174
    new-instance v0, Lcom/google/a/a/bb;

    new-instance v1, Lcom/google/a/a/be;

    invoke-direct {v1, p0}, Lcom/google/a/a/be;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/a/a/bb;-><init>(Lcom/google/a/a/bi;)V

    return-object v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/a/bb;)Lcom/google/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/a/a/bb;->a:Lcom/google/a/a/f;

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/a/bb;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/a/a/bb;->c(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/a/bb;)Z
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/a/a/bb;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/google/a/a/bb;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lcom/google/a/a/bb;->d:I

    return v0
.end method

.method private c(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/a/a/bb;->c:Lcom/google/a/a/bi;

    invoke-interface {v0, p0, p1}, Lcom/google/a/a/bi;->a(Lcom/google/a/a/bb;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/a/a/bb;
    .locals 5

    .prologue
    .line 316
    new-instance v0, Lcom/google/a/a/bb;

    iget-object v1, p0, Lcom/google/a/a/bb;->c:Lcom/google/a/a/bi;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/a/a/bb;->a:Lcom/google/a/a/f;

    iget v4, p0, Lcom/google/a/a/bb;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/a/bb;-><init>(Lcom/google/a/a/bi;ZLcom/google/a/a/f;I)V

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v0, Lcom/google/a/a/bg;

    invoke-direct {v0, p0, p1}, Lcom/google/a/a/bg;-><init>(Lcom/google/a/a/bb;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final b(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-direct {p0, p1}, Lcom/google/a/a/bb;->c(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
