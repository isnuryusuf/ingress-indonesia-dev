.class public final Lcom/google/h/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/google/h/a/a/a;->a:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/google/h/a/a/a;->b:Ljava/lang/String;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/a/a/a;->c:I

    .line 32
    iput-object v1, p0, Lcom/google/h/a/a/a;->d:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/google/h/a/a/a;->e:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/google/h/a/a/a;->f:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/google/h/a/a/a;->g:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static a()Lcom/google/h/a/a/a;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/h/a/a/a;

    invoke-direct {v0}, Lcom/google/h/a/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/h/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/google/h/a/a/a;->c:I

    .line 60
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/h/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/h/a/a/a;->f:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/h/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/h/a/a/a;->a:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public final b()Lcom/google/h/a/a/b;
    .locals 8

    .prologue
    .line 79
    const-string/jumbo v0, "exceptionClassName not set"

    iget-object v1, p0, Lcom/google/h/a/a/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/c/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string/jumbo v0, "throwFileName not set"

    iget-object v1, p0, Lcom/google/h/a/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/c/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string/jumbo v1, "throwLineNumber not set"

    iget v0, p0, Lcom/google/h/a/a/a;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/google/c/a/b/a;->a(Ljava/lang/String;Z)V

    .line 82
    const-string/jumbo v0, "throwClassName not set"

    iget-object v1, p0, Lcom/google/h/a/a/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/c/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string/jumbo v0, "throwMethodName not set"

    iget-object v1, p0, Lcom/google/h/a/a/a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/c/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string/jumbo v0, "stackTrace not set"

    iget-object v1, p0, Lcom/google/h/a/a/a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/c/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    new-instance v0, Lcom/google/h/a/a/b;

    iget-object v1, p0, Lcom/google/h/a/a/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/h/a/a/a;->b:Ljava/lang/String;

    iget v3, p0, Lcom/google/h/a/a/a;->c:I

    iget-object v4, p0, Lcom/google/h/a/a/a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/h/a/a/a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/h/a/a/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/h/a/a/a;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/h/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/h/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/h/a/a/a;->b:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/h/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/h/a/a/a;->d:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/h/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/h/a/a/a;->e:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/h/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/h/a/a/a;->g:Ljava/lang/String;

    .line 75
    return-object p0
.end method
