.class public final Lcom/google/android/gms/internal/ak$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# static fields
.field public static final a:Lcom/google/android/gms/internal/i;


# instance fields
.field final b:I

.field final c:Ljava/lang/String;

.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ak$a;->a:Lcom/google/android/gms/internal/i;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ak$a;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ak$a;->c:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ak$a;->d:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ak$a;->b:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ak$a;->c:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ak$a;->d:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ak$a;->a:Lcom/google/android/gms/internal/i;

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ak$a;->a:Lcom/google/android/gms/internal/i;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/i;->a(Lcom/google/android/gms/internal/ak$a;Landroid/os/Parcel;)V

    return-void
.end method
