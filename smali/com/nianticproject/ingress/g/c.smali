.class public final Lcom/nianticproject/ingress/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/h/a/a/e;


# direct methods
.method protected constructor <init>(Lcom/google/h/a/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nianticproject/ingress/g/c;->a:Lcom/google/h/a/a/e;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/h/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p1, Lcom/google/h/a/a/c;->p:Ljava/util/List;

    const-string/jumbo v1, "com.nianticproject.ingress"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->m:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->n:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->l:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->k:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->j:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/h/a/a/c;->h:Ljava/lang/String;

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/google/h/a/a/c;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/h/a/a/c;->C:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/h/a/a/c;->x:J

    .line 44
    iput-boolean v2, p1, Lcom/google/h/a/a/c;->w:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/google/h/a/a/c;->y:Ljava/util/List;

    iget-object v0, p1, Lcom/google/h/a/a/c;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lcom/google/h/a/a/c;->z:I

    iget-object v0, p0, Lcom/nianticproject/ingress/g/c;->a:Lcom/google/h/a/a/e;

    invoke-virtual {v0}, Lcom/google/h/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/h/a/a/c;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/g/c;->a:Lcom/google/h/a/a/e;

    invoke-virtual {v0}, Lcom/google/h/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/h/a/a/c;->E:Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_0

    iput-object p2, p1, Lcom/google/h/a/a/c;->a:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/google/h/a/a/a;->a()Lcom/google/h/a/a/a;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/h/a/a/a;->b(Ljava/lang/String;)Lcom/google/h/a/a/a;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/h/a/a/a;->c(Ljava/lang/String;)Lcom/google/h/a/a/a;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/h/a/a/a;->a(I)Lcom/google/h/a/a/a;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/h/a/a/a;->d(Ljava/lang/String;)Lcom/google/h/a/a/a;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/h/a/a/a;->e(Ljava/lang/String;)Lcom/google/h/a/a/a;

    :cond_1
    invoke-static {p3}, Lcom/google/a/a/bv;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/h/a/a/a;->a(Ljava/lang/String;)Lcom/google/h/a/a/a;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/h/a/a/a;->f(Ljava/lang/String;)Lcom/google/h/a/a/a;

    invoke-virtual {v0}, Lcom/google/h/a/a/a;->b()Lcom/google/h/a/a/b;

    move-result-object v0

    iput-object v0, p1, Lcom/google/h/a/a/c;->D:Lcom/google/h/a/a/b;

    .line 48
    :cond_2
    return-void

    .line 40
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    iput v0, p1, Lcom/google/h/a/a/c;->i:I

    goto/16 :goto_0
.end method
