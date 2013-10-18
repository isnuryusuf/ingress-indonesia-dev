.class public final Lcom/google/h/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Lcom/google/h/a/a/b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/google/h/a/a/e;->a:Ljava/lang/String;

    .line 141
    iput-boolean v0, p0, Lcom/google/h/a/a/e;->b:Z

    .line 142
    iput-boolean v0, p0, Lcom/google/h/a/a/e;->c:Z

    .line 143
    iput-object v1, p0, Lcom/google/h/a/a/e;->d:Lcom/google/h/a/a/b;

    .line 144
    iput-object p2, p0, Lcom/google/h/a/a/e;->e:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/google/h/a/a/e;->f:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/h/a/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/h/a/a/e;->e:Ljava/lang/String;

    return-object v0
.end method
