#ifndef WASH_PROG_H_
#define WASH_PROG_H_
//#include <vector>
#include <list>
#include <step.h>

//using std::vector;
using std::list;

//#define INTERNAL_CONTAINER
#define CONTAINER_AS_PARAMETER

const int wash_prog_size = 10;

#ifdef INTERNAL_CONTAINER
class WashProgramme {
public:
	enum error_t {
		OK,
		FULL
	};
	WashProgramme();
	~WashProgramme();
	//error_t add(Step s);
	error_t add(Step &s);
	void run() const;
private:
	list<Step *> programme;
	unsigned int next_step;
};
#endif // INTERNAL_CONTAINER

#ifdef CONTAINER_AS_PARAMETER
class WashProgramme {
public:
	enum error_t {
		OK,
		FULL
	};
	typedef list<Step *> Programme;
	WashProgramme(Programme & programme);
	~WashProgramme();
	//error_t add(Step s);
	error_t add(Step &s);
	void run() const;
private:
	Programme & m_programme;
	unsigned int next_step;
};
#endif // CONTAINER_AS_PARAMETER

#endif /* WASH_PROG_H_ */
