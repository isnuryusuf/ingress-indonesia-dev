.class public final Lcom/google/android/gms/internal/gi;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/google/android/gms/internal/gb;


# direct methods
.method public static a(Landroid/content/Context;II)Landroid/view/View;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/gi;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gb;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/al;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/af;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/af;II)Lcom/google/android/gms/internal/af;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/al;->a(Lcom/google/android/gms/internal/af;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/gj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not get button with size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and color "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/internal/gb;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/gi;->b:Lcom/google/android/gms/internal/gb;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gi;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/f;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gi;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gj;

    const-string/jumbo v1, "Could not get remote context."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/gi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/gc;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gi;->b:Lcom/google/android/gms/internal/gb;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/gi;->b:Lcom/google/android/gms/internal/gb;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/gj;

    const-string/jumbo v1, "Could not load creator class."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gj;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/gj;

    const-string/jumbo v1, "Could not instantiate creator."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gj;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/gj;

    const-string/jumbo v1, "Could not access creator."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gj;-><init>(Ljava/lang/String;)V

    throw v0
.end method
