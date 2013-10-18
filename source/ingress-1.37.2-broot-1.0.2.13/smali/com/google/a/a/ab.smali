.class public Lcom/google/a/a/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/a/a/ab;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v0, p1, Lcom/google/a/a/ab;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/ab;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/a/ab;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/a/a/ab;-><init>(Lcom/google/a/a/ab;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/ab;->a:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static a(C)Lcom/google/a/a/ab;
    .locals 2
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/google/a/a/ab;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/a/ab;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/a/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/google/a/a/ab;

    invoke-direct {v0, p0}, Lcom/google/a/a/ab;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/a/ab;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/a/a/ab;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/a/a/ab;
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/google/a/a/ad;

    invoke-direct {v0, p0, p0}, Lcom/google/a/a/ad;-><init>(Lcom/google/a/a/ab;Lcom/google/a/a/ab;)V

    return-object v0
.end method

.method public a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator",
            "<*>;)TA;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/a/ab;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 125
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/a/a/ab;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 127
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/a/ab;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 130
    :cond_0
    return-object p1
.end method

.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 538
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 230
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/google/a/a/ab;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/a/a/ae;

    invoke-direct {v0, p3, p1, p2}, Lcom/google/a/a/ae;-><init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/a/a/ab;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/a/a/ab;->a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    return-object p1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Lcom/google/a/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 265
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Lcom/google/a/a/ac;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/a/a/ac;-><init>(Lcom/google/a/a/ab;Lcom/google/a/a/ab;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/google/a/a/af;
    .locals 2
    .parameter

    .prologue
    .line 328
    new-instance v0, Lcom/google/a/a/af;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/a/a/af;-><init>(Lcom/google/a/a/ab;Ljava/lang/String;B)V

    return-object v0
.end method
